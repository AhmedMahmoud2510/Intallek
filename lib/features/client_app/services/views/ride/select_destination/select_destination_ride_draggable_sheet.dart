import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intallek/core/l10n/s.dart';
import 'package:intallek/core/services/street_name_from_latlng.dart';
import 'package:intallek/core/theme/assets.dart';
import 'package:intallek/core/theme/colors.dart';
import 'package:intallek/core/theme/text_styles.dart';
import 'package:intallek/core/widgets/custom_primary_botton.dart';
import 'package:intallek/core/widgets/custom_primary_textfield.dart';
import 'package:intallek/features/client_app/services/cubit/sheet_cubit.dart';
import 'package:intallek/features/client_app/services/models/car_type_model.dart';
import 'package:intallek/features/client_app/services/views/ride/select_destination/widgets/car_type_cards_list.dart';
import 'package:intallek/features/client_app/services/views/ride/select_destination/widgets/search_your_destination.dart';
import 'package:intallek/presentation/app/controllers/location_cubit/location_cubit.dart';

class SelectDestinationRideDraggableSheet extends StatelessWidget {
  const SelectDestinationRideDraggableSheet({super.key, this.controller});
  final ScrollController? controller;
  @override
  Widget build(BuildContext context) {
    final car = [
      CarTypeModel(
        img: Assets.imagesPngRideTypeEconomyCar,
        type: S.of(context)!.economy,
      ),
      CarTypeModel(
        img: Assets.imagesPngRideTypeStanderCar,
        type: S.of(context)!.stander,
      ),
      CarTypeModel(
        img: Assets.imagesPngRideTypeVipCar,
        type: S.of(context)!.vip,
      ),
      CarTypeModel(
        img: Assets.imagesPngRideTypeFamilyCar,
        type: S.of(context)!.family,
      ),

      CarTypeModel(
        img: Assets.imagesPngRideTypeFamilyVIPCar,
        type: S.of(context)!.familyVIP,
      ),
    ];
    return ListView(
      controller: controller,
      padding: EdgeInsets.symmetric(vertical: 16.h),
      children: [
        Align(
          child: Container(
            width: 24.w,
            height: 4.h,
            decoration: BoxDecoration(
              color: AppColors.forthColor,
              borderRadius: BorderRadius.circular(2.r),
            ),
          ),
        ),
        16.verticalSpace,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            S.of(context)!.findYourRide,
            style: AppStyle.black18W700Style.copyWith(
              fontWeight: FontWeight.w600,
              height: 1.h,
            ),
          ),
        ),
        16.verticalSpace,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            spacing: 6.w,
            children: [
              Icon(Icons.circle, color: AppColors.forthColor, size: 12.h),
              Text(
                S.of(context)!.startLocation,
                style: AppStyle.black16W500Style,
              ),
            ],
          ),
        ),
        8.verticalSpace,

        /// Start Location
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: BlocBuilder<LocationCubit, LocationState>(
            builder: (context, state) {
              if (state is LocationLoaded) {
                final selectLocation = state.selectedLocation;
                final pos = state.position;

                final streetName = getStreetNameFromLatLng(
                  selectLocation ?? LatLng(pos.latitude, pos.longitude),
                );

                return CustomPrimaryTextfield(
                  style: AppStyle.black16W500Style,
                  text: selectLocation == null
                      ? '${pos.latitude}, ${pos.longitude}'
                      : '$streetName',
                );
              }
              return const CustomPrimaryTextfield(readOnly: true);
            },
          ),
        ),
        12.verticalSpace,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            spacing: 6.w,
            children: [
              Icon(
                Icons.location_on_rounded,
                color: AppColors.forthColor,
                size: 20.h,
              ),
              Text(
                S.of(context)!.yourDestination,
                style: AppStyle.black16W500Style,
              ),
            ],
          ),
        ),
        8.verticalSpace,

        /// Search Your Destination
        const SearchYourDestination(),
        16.verticalSpace,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            S.of(context)!.availableOptions,
            style: AppStyle.black16W700Style.copyWith(
              decoration: TextDecoration.underline,
              height: 1.6.h,
            ),
          ),
        ),
        8.verticalSpace,
        CarTypeCardsList(car: car),
        16.verticalSpace,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            S.of(context)!.paymentMethod,
            style: AppStyle.black16W700Style.copyWith(
              decoration: TextDecoration.underline,
              height: 1.6.h,
            ),
          ),
        ),
        8.verticalSpace,

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            spacing: 4.w,
            children: [
              Icon(Icons.check_box, size: 16.h),
              Text(S.of(context)!.visa, style: AppStyle.black16W500Style),
            ],
          ),
        ),
        20.verticalSpace,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: CustomPrimaryBotton(
            text: S.of(context)!.findDriver,
            onPressed: () => context.read<SheetCubit>().changeSheet(2),
          ),
        ),
      ],
    );
  }
}
