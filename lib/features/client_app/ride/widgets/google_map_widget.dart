import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intallek/presentation/app/controllers/location_cubit/location_cubit.dart';

class GoogleMapWidget extends StatelessWidget {
  const GoogleMapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // final locationCubit = context.read<LocationCubit>();
    return BlocBuilder<LocationCubit, LocationState>(
      builder: (context, state) {
        if (state is LocationLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is LocationLoaded) {
          final pos = state.position;

          return GoogleMap(
            onMapCreated: (controller) {
              context.read<LocationCubit>().setMapController(controller);
            },
            initialCameraPosition: CameraPosition(
              target: LatLng(pos.latitude, pos.longitude),
              zoom: 16,
            ),
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
            mapType: MapType.hybrid,
          );
        } else if (state is LocationError) {
          return Center(child: Text('خطأ: ${state.message}'));
        }
        return const SizedBox();
        // const GoogleMap(
        //   initialCameraPosition: CameraPosition(
        //     target: LatLng(24.7136, 46.6753),
        //     zoom: 14,
        //   ),

        //   // onMapCreated: (controller) {
        //   //   locationCubit = controller;

        //   // },
        //   myLocationButtonEnabled: true,
        //   mapType: MapType.normal,
        // );
      },
    );
  }
}
