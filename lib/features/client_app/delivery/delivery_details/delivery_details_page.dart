import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intallek/features/client_app/delivery/delivery_details/widgets/delivery_details_draggable_sheet.dart';
import 'package:intallek/features/client_app/ride/widgets/google_map_widget.dart';

class DeliveryDetailsPage extends StatelessWidget {
  const DeliveryDetailsPage({super.key});

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
              return DeliveryDetailsDraggableSheet(controller: controller);
            },
          ),
        ],
      ),
    );
  }
}
