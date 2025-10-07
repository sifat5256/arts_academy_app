// ============================================
// FILE: schedule_page.dart
// ============================================
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import '../controllers/schedule_controller.dart';
import '../widgets/main_schedule_card.dart';

import '../widgets/full_schedule_bottomsheet.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ScheduleController());
    return Scaffold(
      backgroundColor: Colors.grey.shade100.withOpacity(0.5),
      body: SafeArea(
        child: GetBuilder<ScheduleController>(
          builder: (_) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Warning Banner
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFF4E5),

                      border: Border(
                        bottom: BorderSide(
                          color: Colors.amber, // 👈 only bottom border color
                          width: 2.0,          // 👈 bottom border thickness
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          BootstrapIcons.volume_up_fill,
                          color: const Color(0xFFFF9800),
                          size: 16.sp,
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Text(
                            "Academy closed Friday for seminar.",
                            style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              color: Colors.black87,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.navigate_next,
                          color: const Color(0xFFFF9800),
                          size: 16.sp,
                        ),
                      ],
                    ),
                  ),
              
              
              
                  // Date Header with Navigation
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 16.r,
                          backgroundColor: Colors.black12.withOpacity(0.05),
                          child: const Icon(Icons.navigate_before, color: Colors.black),
                        ),
                        Row(
                          children: [
                            Text(
                              controller.selectedDate.value,
                              style: GoogleFonts.poppins(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 6.w),
                            Icon(
                              BootstrapIcons.calendar2_check,
                              size: 12.sp,
                              color: Colors.black54,
                            ),
                          ],
                        ),
                        CircleAvatar(
                          radius: 16.r,
                          backgroundColor: Colors.black12.withOpacity(0.05),
                          child: const Icon(Icons.navigate_next_outlined, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.h),
              
                  // Schedule List
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,right: 10
                    ),
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10.h),
                      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(color: Colors.grey.shade300, width: 1),
                      ),
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        itemCount: controller.dailySchedule.length,
                        itemBuilder: (context, index) {
                          return MainScheduleCard(data: controller.dailySchedule[index]);
                        },
                      ),
                    ),
                  ),
              
            
              Padding(
                padding: const EdgeInsets.only(
                    left: 10,right: 10
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: Colors.grey.shade300, width: 1),
                  ),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.bottomSheet(
                            const FullScheduleBottomSheet(),
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),

                          child: Row(
                            children: [
                              Icon(
                                BootstrapIcons.calendar2_check,
                                size: 12.sp,
                                color: const Color(0xFF2196F3),
                              ),
                              SizedBox(width: 10.w),
                              Text(
                                "View Full Schedule",
                                style: GoogleFonts.poppins(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black87,
                                ),
                              ),
                              const Spacer(),
                              Icon(
                                BootstrapIcons.chevron_right,
                                size: 16.sp,
                                color: Colors.grey.shade600,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.grey.shade200,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),

                        child: Row(
                          children: [
                            Icon(
                              BootstrapIcons.geo_alt,
                              size: 12.sp,
                              color: const Color(0xFF4CAF50),
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              "Get Directions",
                              style: GoogleFonts.poppins(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87,
                              ),
                            ),
                            const Spacer(),
                            Icon(
                              BootstrapIcons.chevron_right,
                              size: 16.sp,
                              color: Colors.grey.shade600,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                ),
              ),
                  // View Full Schedule Button

                  SizedBox(height: 8.h),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
