import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutCard extends StatelessWidget {
  const AboutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "XLV Martial Arts Academy",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 15.sp,
            ),
          ),
          SizedBox(height: 2.h),
          Text(
            "Version 1.2.0",
            style: GoogleFonts.poppins(
              fontSize: 12.sp,
              color: Colors.grey[600],
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            "Offers world-class training in Brazilian Jiu-Jitsu, Capoeira, Eskrima, and Kyokushin Savate under the guidance of Professor Xingu Del Rosario and his teaching team.",
            style: GoogleFonts.poppins(
              fontSize: 12.sp,
              height: 1.4,
              color: Colors.grey[700],
            ),
          ),
        ],
      ),
    );
  }
}
