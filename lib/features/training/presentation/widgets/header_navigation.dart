import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderNavigation extends StatelessWidget {
  const HeaderNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 16.r,
            backgroundColor: Colors.black12.withOpacity(0.05),
            child: const Icon(Icons.navigate_before, color: Colors.black),
          ),
          Text(
            "Oct 4-10, 2024",
            style: GoogleFonts.poppins(
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          CircleAvatar(
            radius: 16.r,
            backgroundColor: Colors.black12.withOpacity(0.05),
            child: const Icon(Icons.navigate_next, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
