import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import '../controllers/schedule_controller.dart';

class FullScheduleBottomSheet extends StatelessWidget {
  const FullScheduleBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ScheduleController>();
    return Container(
      height: MediaQuery.of(context).size.height * 0.85,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r),
        ),
      ),
      child: Column(
        children: [
          // Header
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.r),
                topRight: Radius.circular(16.r),
              ),
            
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Weekly Schedule",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.sp,
                    color: Colors.black,
                  ),
                ),
                GestureDetector(
                  onTap: () => Get.back(),
                  child: Icon(
                    BootstrapIcons.x_circle,
                    size: 22.sp,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey.shade200,
          ),

          // Scrollable Content
          Expanded(
            child: Container(
              color: Colors.white,
              child: SingleChildScrollView(
                padding: EdgeInsets.all(16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: controller.weeklySchedule.entries.map((entry) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 20.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Day Header
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                entry.key,
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.sp,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "${entry.value.length} classes",
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.grey.shade200,
                          ),

                          // Classes for the day
                          ...entry.value.map((classData) {
                            final classMap = classData as Map<String, dynamic>;
                            return Container(
                              margin: EdgeInsets.only(bottom: 8.h),
                              decoration: BoxDecoration(
                                color: Colors.blue.shade50.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(8.r),
                                border: Border(
                                  left: BorderSide(
                                    color: Colors.blue,
                                    width: 4.w,
                                  ),
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 14.w,
                                vertical: 12.h,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Left side - Time
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        classMap['time'] as String,
                                        style: GoogleFonts.poppins(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600,
                                          color: Color(classMap['color'] as int),
                                        ),
                                      ),
                                      SizedBox(height: 2.h),
                                      Text(
                                        classMap['duration'] as String,
                                        style: GoogleFonts.poppins(
                                          fontSize: 10.sp,
                                          color: Colors.grey.shade600,
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(width: 14.w),

                                  // Right side - Class details
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          classMap['title'] as String,
                                          style: GoogleFonts.poppins(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(height: 2.h),
                                        Text(
                                          "with ${classMap['instructor'] as String}",
                                          style: GoogleFonts.poppins(
                                            fontSize: 12.sp,
                                            color: Colors.grey.shade700,
                                          ),
                                        ),
                                        SizedBox(height: 6.h),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 8.w,
                                            vertical: 3.h,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Color(classMap['color'] as int).withOpacity(0.1),
                                            borderRadius: BorderRadius.circular(4.r),
                                          ),
                                          child: Text(
                                            classMap['tag'] as String,
                                            style: GoogleFonts.poppins(
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.w600,
                                              color: Color(classMap['color'] as int),
                                              letterSpacing: 0.3,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}