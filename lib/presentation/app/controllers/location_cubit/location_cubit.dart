import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

part 'location_state.dart';

class LocationCubit extends Cubit<LocationState> {
  LocationCubit() : super(LocationInitial());

  Position? _lastKnownPosition;
  GoogleMapController? _controller;

  Position? get lastKnownPosition => _lastKnownPosition;

  void setMapController(GoogleMapController controller) {
    _controller = controller;
  }

  Future<void> getCurrentLocation() async {
    emit(LocationLoading());

    try {
      final status = await Permission.location.request();
      if (!status.isGranted) {
        emit(LocationError('صلاحية الموقع مرفوضة'));
        return;
      }

      final position = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
        ),
      );

      _lastKnownPosition = position;
      emit(LocationLoaded(position));
    } catch (e) {
      emit(LocationError('حدث خطأ: $e'));
    }
  }
}
