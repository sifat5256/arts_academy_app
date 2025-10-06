import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../data/model/training_model.dart';

class TrainingCard extends StatelessWidget {
  final TrainingModel training;

  const TrainingCard({super.key, required this.training});

  @override
  Widget build(BuildContext context) {
    final colorMap = {
      'BJJ': Colors.blue,
      'CAPOEIRA': Colors.green,
      'ESKRIMA': Colors.orange,
    };

    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 14.w),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      elevation: 0.2,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Day and Program Badge
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${training.day}",
                      style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "${training.date}",
                      style: GoogleFonts.poppins(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    color: colorMap[training.program]?.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Text(
                    training.program,
                    style: GoogleFonts.poppins(
                      color: colorMap[training.program],
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 8.h),

            // Title & Instructor
            Text(
              training.title,
              style: GoogleFonts.poppins(
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "with ${training.instructor}",
              style: GoogleFonts.poppins(
                fontSize: 13.sp,
                color: Colors.grey.shade600,
              ),
            ),
            Text(
              training.time,
              style: GoogleFonts.poppins(fontSize: 11.sp, color: Colors.blue),
            ),
            SizedBox(height: 10.h),

            // Recap Video (if available)
            if (training.videoDuration != null)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT42giTxBcOLZItBWNnRAxJj2wc_64pj8Iu-6Wlug79sHUkKSyAz5YTzds&s',
                      height: 130.h,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    "Recap Video (${training.videoDuration})",
                    style: GoogleFonts.poppins(fontSize: 12.sp),
                  ),
                ],
              ),

            SizedBox(height: 8.h),

            // Lesson Notes (if exists)
            if (training.notes != null)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Lesson Notes",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 13.sp,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(8.w),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Text(
                      "\n${training.notes!}",
                      style: GoogleFonts.poppins(fontSize: 12.sp),
                    ),
                  ),
                ],
              ),

            // Drills Practiced Section
            if (training.drills != null)
              Padding(
                padding: EdgeInsets.only(top: 8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Drills Practiced (${training.drills!.length})",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 13.sp,
                      ),
                    ),
                    ...training.drills!.map(
                      (e) => Column(
                        children: [
                          SizedBox(
                            height: 4.h,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Colors.blue.shade50.withOpacity(0.5),
                              ),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.check,
                                    size: 14,
                                    color: Colors.green,
                                  ),
                                  SizedBox(width: 5.w),
                                  Text(
                                    e,
                                    style: GoogleFonts.poppins(fontSize: 12.sp),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            // Upcoming Tag
            if (training.isUpcoming)
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 8.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.list, size: 18, color: Colors.orange),
                      SizedBox(width: 6.w),
                      Text(
                        "Upcoming",
                        style: GoogleFonts.poppins(
                          color: Colors.orange,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
