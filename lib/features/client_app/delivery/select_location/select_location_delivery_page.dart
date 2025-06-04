
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intallek/features/client_app/delivery/select_location/widgets/select_location_delivery_draggable_sheet.dart';
import 'package:intallek/presentation/app/widgets/google_map_widget.dart';

class SelectLocationDeliveryPage extends StatelessWidget {
  const SelectLocationDeliveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 108.h,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(16.r)),
        ),
      ),
      body: Stack(
        children: [
          const GoogleMapWidget(),

          DraggableScrollableSheet(
            initialChildSize: 0.8,
            minChildSize: 0.4,
            maxChildSize: 0.95,
            builder: (_, controller) {
              return SelectLocationDeliveryDraggableSheet(controller: controller);
            },
          ),
        ],
      ),
    );
  }
}