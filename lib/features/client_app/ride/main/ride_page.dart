import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intallek/features/client_app/ride/main/widgets/google_map_widget.dart';
import 'package:intallek/features/client_app/ride/main/widgets/main_ride_draggable_sheet.dart';

class RidePage extends StatelessWidget {
  const RidePage({super.key});

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
            initialChildSize: 0.4,
            minChildSize: 0.2,
            maxChildSize: 0.6,
            builder: (_, controller) {
              return RideDraggableSheet(controller: controller);
            },
          ),
        ],
      ),
    );
  }
}
