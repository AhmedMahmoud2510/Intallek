import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intallek/core/l10n/s.dart';
import 'package:intallek/core/theme/assets.dart';
import 'package:intallek/core/theme/colors.dart';
import 'package:intallek/core/theme/text_styles.dart';
import 'package:intallek/core/widgets/svg_image_widget.dart';
import 'package:intallek/features/client_app/activity/activity_page.dart';
import 'package:intallek/features/client_app/home/home_page.dart';

class AppNavigationBar extends StatefulWidget {
  const AppNavigationBar({super.key});

  @override
  State<AppNavigationBar> createState() => _AppNavigationBarState();
}

class _AppNavigationBarState extends State<AppNavigationBar> {
  int _currentIndex = 0;
  List<Widget> pages = [
    const HomePage(),
    const ActivityPage(),
    const SizedBox(),
  ];
  List<String> selectedIcon = [
    Assets.imagesIconsHome,
    Assets.imagesIconsAnalys,
    Assets.imagesIconsUser,
  ];

  late List<String> itemName;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    itemName = [
      S.of(context)!.home,
      S.of(context)!.activity,
      S.of(context)!.profile,
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 108.h,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(16.r)),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const SvgImage(imagePath: Assets.imagesIconsMenu),
        ),
        actions: [
          12.horizontalSpace,
          IconButton(
            onPressed: () {},
            icon: const SvgImage(imagePath: Assets.imagesIconsBell),
          ),
          4.horizontalSpace,
        ],
        title: SvgImage(imagePath: Assets.imagesSvgHomeLogo, height: 37.h),
        centerTitle: true,
      ),
      body: IndexedStack(index: _currentIndex, children: pages),
      bottomNavigationBar: Container(
        height: 58.h,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
        ),
        child: BottomNavigationBar(
          landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
          backgroundColor: AppColors.primaryColor,
          currentIndex: _currentIndex,
          onTap: _onItemTapped,
          selectedItemColor: AppColors.forthColor,
          unselectedItemColor: AppColors.secondaryColor,
          selectedLabelStyle: AppStyle.navigationBarTextStyle.copyWith(
            fontWeight: FontWeight.w500,
          ),
          unselectedLabelStyle: AppStyle.navigationBarTextStyle,
          elevation: 0,

          items: [
            /// Home button
            BottomNavigationBarItem(
              icon: SvgImage(
                imagePath: selectedIcon[0],
                height: 20.h,
                color: _currentIndex == 0
                    ? AppColors.forthColor
                    : AppColors.secondaryColor,
              ),
              label: itemName[0],
            ),

            /// Analys button
            BottomNavigationBarItem(
              icon: SvgImage(
                imagePath: selectedIcon[1],
                height: 20.h,
                color: _currentIndex == 1
                    ? AppColors.forthColor
                    : AppColors.secondaryColor,
              ),
              label: itemName[1],
            ),

            /// User button
            BottomNavigationBarItem(
              icon: SvgImage(
                imagePath: selectedIcon[2],
                height: 20.h,
                color: _currentIndex == 2
                    ? AppColors.forthColor
                    : AppColors.secondaryColor,
              ),
              label: itemName[2],
            ),
          ],
        ),
      ),
    );
  }
}
