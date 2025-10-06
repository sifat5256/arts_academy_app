import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LessonNotesSection extends StatelessWidget {
  final String notes;

  const LessonNotesSection({super.key, required this.notes});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 10.h),
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: Colors.blue.shade100),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Lesson Notes",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 13.sp,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 6.h),
          Text(
            notes,
            style: GoogleFonts.poppins(
              fontSize: 12.sp,
              color: Colors.black87,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
