import 'package:flutter/material.dart';
import 'package:intallek/core/theme/colors.dart';
import 'package:intallek/core/theme/values.dart';
import 'package:intallek/features/client_app/services/views/delivery/confirm_delivery/delivery_details_draggable_sheet.dart';
import 'package:intallek/features/client_app/services/views/delivery/select_destination/select_destination_delivery_draggable.dart';
import 'package:intallek/features/client_app/services/views/delivery/start_location/start_location_delivery_draggable.dart';

class DeliveryDraggableSheet extends StatelessWidget {
  const DeliveryDraggableSheet({
    required this.index,
    super.key,
    this.controller,
  });
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
          ? StartLocationDeliveryDraggable(controller: controller)
          : index == 1
          ? SelectDestinationDeliveryPage(controller: controller)
          : DeliveryDetailsDraggableSheet(controller: controller),
    );
  }
}
