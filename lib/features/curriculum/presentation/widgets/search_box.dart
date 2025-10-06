import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(
        left: 15.w,right: 15.w
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
        decoration: BoxDecoration(
          color: Colors.grey.shade200, // background of circular container
          borderRadius: BorderRadius.circular(20.r), // fully circular
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Search techniques...",
            hintStyle: GoogleFonts.poppins(
              fontSize: 14.sp,
              color: Colors.grey[500],
            ),
            prefixIcon: const Icon(BootstrapIcons.search, color: Colors.grey),
            filled: true,
            fillColor: Colors.grey.shade200, // match container background
            contentPadding: EdgeInsets.symmetric( horizontal: 14.w),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.r), // circular
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}
