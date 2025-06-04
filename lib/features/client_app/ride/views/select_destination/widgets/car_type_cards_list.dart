import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intallek/features/client_app/ride/models/car_type_model.dart';
import 'package:intallek/features/client_app/ride/views/select_destination/widgets/car_type_card_widget.dart';

class CarTypeCardsList extends StatefulWidget {
  const CarTypeCardsList({required this.car, super.key});

  final List<CarTypeModel> car;

  @override
  State<CarTypeCardsList> createState() => _CarTypeCardsListState();
}

class _CarTypeCardsListState extends State<CarTypeCardsList> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        scrollDirection: Axis.horizontal,
        itemExtent: 108.w,
        itemCount: 5,
        itemBuilder: (context, index) {
          final isSelected = selectedIndex == index;

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });

              // ارسال القيمة
            },

            child: CarTypeCardWidget(
              car: widget.car[index],
              isSelected: isSelected,
            ),
          );
        },
      ),
    );
  }
}
