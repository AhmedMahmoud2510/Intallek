import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:intallek/core/keys.dart';
import 'package:permission_handler/permission_handler.dart';

part 'location_state.dart';

class LocationCubit extends Cubit<LocationState> {
  LocationCubit() : super(LocationInitial());
  GoogleMapController? mapController;

  Future<Position?> getCurrentLocation({int retryCount = 0}) async {
    emit(LocationLoading());

    try {
      // التأكد من أن خدمة الموقع مفعلة (GPS)
      final serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        emit(LocationError('خدمة الموقع غير مفعّلة. الرجاء تفعيل GPS.'));
        return null;
      }

      // طلب الإذن
      final status = await Permission.location.request();
      if (!status.isGranted) {
        emit(LocationError('تم رفض إذن الموقع: $status'));
        return null;
      }

      // الحصول على الموقع
      final position = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
        ),
      );

      // تحديث الحالة فقط إذا كانت مختلفة عن السابقة
      if (state is! LocationLoaded ||
          (state as LocationLoaded).position != position) {
        emit(LocationLoaded(position));
      }

      return position;
    } catch (e) {
      // إعادة المحاولة مرة واحدة فقط (مثلاً في حال خطأ غير متوقع)
      if (retryCount < 1) {
        await Future.delayed(const Duration(seconds: 1)); // انتظار بسيط
        return getCurrentLocation(retryCount: retryCount + 1);
      }

      emit(LocationError('خطأ في جلب الموقع: $e'));
      return null;
    }
  }

  void updateSelectedLocation(LatLng newLocation) {
    if (state is LocationLoaded) {
      final current = state as LocationLoaded;
      emit(LocationLoaded(current.position, selectedLocation: newLocation));
    }
  }
///
  List<String> suggestions = [];
  void clearSuggestions() => emit(LocationSuggestionsUpdated([]));

  Future<void> fetchSuggestions(String query) async {
    try {
      // مثال باستخدام Google Places API (تحتاج تفعيله ووضع مفتاح API)
      final response = await http.get(
        Uri.parse(
          'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$query&key=$kKay&language=en&components=country:us',
        ),
      );
      final jsonData = json.decode(response.body);
      final results = jsonData['predictions'] as List<dynamic>;
      final titles = results.map((r) => r['description'].toString()).toList();
      suggestions = titles.take(5).toList();
      emit(LocationSuggestionsUpdated(suggestions));
    } catch (e) {
      print('Suggestion Error: $e');
      emit(LocationSuggestionsUpdated([]));
    }
  }
}
