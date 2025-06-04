import 'dart:async';

import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

Future<String?> getStreetNameFromLatLng(LatLng location) async {
  try {
    final placemarks = await placemarkFromCoordinates(
      location.latitude,
      location.longitude,
    ).timeout(const Duration(seconds: 5));
    if (placemarks.isNotEmpty) {
      final place = placemarks.first;
      return [
        place.street,
        place.subLocality,
        place.locality,
        place.administrativeArea,
        place.country,
      ].where((e) => e != null && e.isNotEmpty).join(', ');
    }
    return 'عنوان غير معروف';
  } on TimeoutException {
    return 'المهلة انتهت، حاول مرة أخرى.';
  } catch (e) {
    print('خطأ في تحديد العنوان: $e');
    return null;
  }
}

Future<LatLng?> getLatLngFromAddress(String address) async {
  try {
    final locations = await locationFromAddress(address);
    if (locations.isNotEmpty) {
      final loc = locations.first;
      return LatLng(loc.latitude, loc.longitude);
    }
  } catch (e) {
    print('Error in forward geocoding: $e');
  }
  return null;
}
