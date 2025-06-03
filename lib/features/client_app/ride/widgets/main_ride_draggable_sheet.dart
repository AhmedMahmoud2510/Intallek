import 'package:flutter/material.dart';
import 'package:intallek/core/theme/colors.dart';
import 'package:intallek/core/theme/values.dart';
import 'package:intallek/features/client_app/ride/refactors/find_ride_draggable_sheet.dart';
import 'package:intallek/features/client_app/ride/refactors/ride_details_draggable_sheet.dart';
import 'package:intallek/features/client_app/ride/refactors/select_location_draggable.dart';

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
          ? SelectLocationDraggable(controller: controller)
          : index == 1
          ? const FindRideDraggableSheet()
          : const RideDetailsDraggableSheet(),
    );
  }
}
