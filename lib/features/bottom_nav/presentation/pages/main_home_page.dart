
import 'package:arts_academy_app/features/schedule/presentation/pages/schedule_page.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../curriculum/presentation/pages/curriculum_page.dart';
import '../../../settings/presentation/pages/settings_page.dart';
import '../../../training/presentation/pages/training_page.dart';
import '../controllers/nav_controller.dart';


class MainHomePage extends StatelessWidget {
  MainHomePage({super.key});

  final NavController navController = Get.put(NavController());

  final List<Widget> pages = const [
    TrainingPage(),
    CurriculumPage(),
    SchedulePage(),
    SettingsPage(),

  ];


  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavController>(
      builder: (controller) {
        return Scaffold(

          body: pages[controller.selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: controller.selectedIndex,
            onTap: controller.changeIndex,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            selectedLabelStyle: GoogleFonts.poppins(fontSize: 12.sp,fontWeight: FontWeight.w600),
            unselectedLabelStyle: GoogleFonts.poppins(fontSize: 11.sp,fontWeight: FontWeight.w600),
            items:  [
              BottomNavigationBarItem(
                icon: Icon(BootstrapIcons.flag,size: 16.r,),
                label: "Training",
              ),
              BottomNavigationBarItem(
                icon: Icon(BootstrapIcons.list_task,size: 16.r,),
                label: "Curriculum",
              ),
              BottomNavigationBarItem(
                icon: Icon(BootstrapIcons.calendar2_check,size: 16.r,),
                label: "Schedule",
              ),
              BottomNavigationBarItem(
                icon: Icon(BootstrapIcons.gear,size: 16.r,),
                label: "Settings",
              ),
            ],
          ),
        );
      },
    );
  }
}
