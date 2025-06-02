import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intallek/features/client_app/ride/main/widgets/google_map_widget.dart';
import 'package:intallek/features/client_app/ride/ride_details/widgets/ride_details_draggable_sheet.dart';

class RideDetailsPage extends StatelessWidget {
  const RideDetailsPage({super.key});

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
              return RideDetailsDraggableSheet(controller: controller);
            },
          ),
        ],
      ),
    );
  }
}
