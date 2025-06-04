import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intallek/features/client_app/services/cubit/sheet_cubit.dart';
import 'package:intallek/features/client_app/services/views/delivery/main_delivery_draggable_sheet.dart';
import 'package:intallek/presentation/app/widgets/google_map_widget.dart';

class DeliveryPage extends StatelessWidget {
  const DeliveryPage({super.key});

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
          const Positioned.fill(child: GoogleMapWidget()),

          BlocBuilder<SheetCubit, int>(
            builder: (context, index) {
              return DraggableScrollableSheet(
                snap: true,
                initialChildSize: index == 0
                    ? 0.4
                    : index == 1
                    ? 0.85
                    : 0.8,
                minChildSize: index == 0
                    ? 0.2
                    : index == 1
                    ? 0.2
                    : 0.4,
                maxChildSize: index == 0
                    ? 0.6
                    : index == 1
                    ? 0.9
                    : 0.95,
                builder: (_, controller) {
                  return DeliveryDraggableSheet(
                    index: index,
                    controller: controller,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
