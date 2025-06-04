import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intallek/core/theme/colors.dart';
import 'package:intallek/core/theme/text_styles.dart';
import 'package:intallek/features/client_app/ride/models/car_type_model.dart';

class CarTypeCardWidget extends StatelessWidget {
  const CarTypeCardWidget({
    required this.car,
    required this.isSelected,
    super.key,
  });
  final CarTypeModel car;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60.h,
          margin: EdgeInsets.symmetric(horizontal: 4.w),
          decoration: BoxDecoration(
            color: isSelected ? AppColors.primaryColor : AppColors.thirdColor,
            borderRadius: BorderRadius.vertical(top: Radius.circular(8.r)),
            // border: isSelected
            //     ? Border.fromBorderSide(
            //         BorderSide(color: Colors.blue, width: 2.w),
            //       )
            //     : Border.all(color: Colors.transparent, width: 2.w),
          ),
          alignment: Alignment.center,
          child: Image.asset(car.img, width: 75.w),
        ),
        Container(
          height: 30.h,
          margin: EdgeInsets.symmetric(horizontal: 4.w),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(8.r)),
          ),
          child: Text(
            car.type,
            style: AppStyle.black16W700Style.copyWith(
              fontSize: 12.sp,
              color: AppColors.forthColor,
            ),
          ),
        ),
      ],
    );
  }
}
