import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/training_controller.dart';
import '../widgets/header_navigation.dart';
import '../widgets/training_card.dart';

class TrainingPage extends StatelessWidget {
  const TrainingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, // remove shadow completely
        surfaceTintColor: Colors.transparent,
        title: Text(
          "Weekly Training",
          style: GoogleFonts.poppins(
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
          ),
        ),


      ),

      // ✅ Changed from Obx → GetBuilder
      body: GetBuilder<TrainingController>(
        init: TrainingController(),
        builder: (controller) {
          return ListView(
            children: [

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: controller.toggleDropdown,
                      child: Container(

                        child: Row(

                          children: [
                            Text(
                              "Program: ${controller.selectedProgram}",
                              style: GoogleFonts.poppins(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Icon(
                              controller.isDropdownExpanded
                                  ? Icons.arrow_drop_up
                                  : Icons.arrow_drop_down,
                              color: Colors.black87,
                            ),
                          ],
                        ),
                      ),
                    ),


                    if (controller.isDropdownExpanded)
                      Container(
                        margin: EdgeInsets.only(top: 4.h),

                        child: Column(
                          children: controller.programs.map((program) {
                            bool isSelected = controller.selectedProgram == program;
                            return InkWell(
                              onTap: () => controller.selectProgram(program),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 1.h, ),
                                child: Row(
                                  children: [
                                    Text(
                                      program,
                                      style: GoogleFonts.poppins(
                                        fontSize: 14.sp,
                                        fontWeight: isSelected
                                            ? FontWeight.w600
                                            : FontWeight.w400,
                                        color: isSelected
                                            ? Colors.black87
                                            : Colors.black87,
                                      ),
                                    ),
                                    if (isSelected)
                                      Padding(
                                        padding: EdgeInsets.only(left: 8.w),
                                        child: const Icon(
                                          Icons.check,
                                          color: Colors.blue,
                                          size: 18,
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, ),
                child: Divider(
                  color: Colors.grey.shade300,
                ),
              ),
              const HeaderNavigation(),
              ...controller.trainings
                  .map((e) => TrainingCard(training: e))
                  .toList(),
            ],
          );
        },
      ),
    );
  }
}
