import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intallek/presentation/app/controllers/location_cubit/location_cubit.dart';

class GoogleMapWidget extends StatefulWidget {
  const GoogleMapWidget({super.key});

  @override
  State<GoogleMapWidget> createState() => _GoogleMapWidgetState();
}

class _GoogleMapWidgetState extends State<GoogleMapWidget> {
  void onMapCreated(GoogleMapController controller) {
    context.read<LocationCubit>().mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationCubit, LocationState>(
      builder: (context, state) {
        if (state is LocationLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is LocationLoaded) {
          final pos = state.position;
          final selected =
              state.selectedLocation ?? LatLng(pos.latitude, pos.longitude);

          return GoogleMap(
            onMapCreated: onMapCreated,
            initialCameraPosition: CameraPosition(
              target: LatLng(pos.latitude, pos.longitude),
              zoom: 16,
            ),
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
            mapType: MapType.normal,
            markers: {
              Marker(
                markerId: const MarkerId('selected_location'),
                position: selected,
                infoWindow: const InfoWindow(title: 'الموقع المحدد'),
                icon: BitmapDescriptor.defaultMarkerWithHue(
                  BitmapDescriptor.hueAzure,
                ),
              ),
            },

            onTap: (LatLng latLng) {
              context.read<LocationCubit>().updateSelectedLocation(latLng);
              context.read<LocationCubit>().mapController?.animateCamera(
                CameraUpdate.newLatLng(latLng),
              );
            },

            onCameraIdle: () {
              // يمكنك إضافة أي وظيفة عند توقف الكاميرا
            },
          );
        } else if (state is LocationError) {
          return const Center(child: Text('خطأ في الحصول على الموقع الحالي'));
        }
        return const SizedBox();
      },
    );
  }
}
