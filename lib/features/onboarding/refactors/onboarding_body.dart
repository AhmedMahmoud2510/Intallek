import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intallek/core/router/app_routes.dart';
import 'package:intallek/core/theme/assets.dart';
import 'package:intallek/core/theme/colors.dart';
import 'package:intallek/features/onboarding/widgets/app_journey_dot.dart';
import 'package:intallek/features/onboarding/widgets/next_button.dart';
import 'package:intallek/features/onboarding/widgets/onboared_text.dart';
import 'package:intallek/features/onboarding/widgets/skip_button.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
          itemCount: 3,
          controller: _pageController,
          physics: const BouncingScrollPhysics(),
          onPageChanged: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          itemBuilder: (context, index) {
            return Column(
              children: [
                /// images
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height / 1.6,
                  padding: EdgeInsets.only(top: 200.h),
                  decoration: ShapeDecoration(
                    color: AppColors.darkGreyColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16.r),
                        bottomRight: Radius.circular(16.r),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    index == 0
                        ? Assets.imagesPngOnboarding1
                        : index == 1
                        ? Assets.imagesPngOnboarding2
                        : Assets.imagesPngOnboarding3,
                  ),
                ),

                /// onboard text
                SizedBox(
                  height: MediaQuery.sizeOf(context).height / 7,
                  child: OnboaredText(index: index),
                ),
              ],
            );
          },
        ),

        /// dots
        Positioned(
          bottom: MediaQuery.sizeOf(context).height / 5,
          right: 0,
          left: 0,
          child: SizedBox(
            height: 15.h,
            child: CustomJourneyDot(activeIndex: _currentIndex, count: 3),
          ),
        ),

        /// Button
        Positioned(
          bottom: MediaQuery.sizeOf(context).height / 12,
          right: 16.w,
          left: 16.w,
          child: NextButton(
            index: _currentIndex,
            onTap: () {
              if (_currentIndex == 2) {
                GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
              } else if (_currentIndex == 0) {
                _pageController.nextPage(
                  duration: const Duration(seconds: 1),
                  curve: Curves.ease,
                );
              } else if (_currentIndex == 1) {
                _pageController.nextPage(
                  duration: const Duration(seconds: 1),
                  curve: Curves.ease,
                );
              }
            },
          ),
        ),
        Positioned(
          child: Align(
            alignment: Localizations.localeOf(context).languageCode == 'ar'
                ? Alignment.bottomLeft
                : Alignment.bottomRight,
            child: const SkipButton(),
          ),
        ),
      ],
    );
  }
}
