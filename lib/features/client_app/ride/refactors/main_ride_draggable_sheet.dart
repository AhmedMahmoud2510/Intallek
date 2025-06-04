import 'package:flutter/material.dart';
import 'package:intallek/core/theme/colors.dart';
import 'package:intallek/core/theme/values.dart';
import 'package:intallek/features/client_app/ride/views/confirm_ride/ride_details_draggable_sheet.dart';
import 'package:intallek/features/client_app/ride/views/select_destination/select_destination_ride_draggable_sheet.dart';
import 'package:intallek/features/client_app/ride/views/start_location/start_location_draggable.dart';

class RideDraggableSheet extends StatelessWidget {
  const RideDraggableSheet({required this.index, super.key, this.controller});
  final ScrollController? controller;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(AppValues.radius),
        ),
      ),
      child: index == 0
          ? StartLocationDraggable(controller: controller)
          : index == 1
          ? SelectDestinationRideDraggableSheet(controller: controller)
          : RideDetailsDraggableSheet(controller: controller),
    );
  }
}
