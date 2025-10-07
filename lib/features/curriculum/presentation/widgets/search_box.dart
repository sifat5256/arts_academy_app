import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 0.3.w,
          ),
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding:  EdgeInsets.only(
          left: 15.w,right: 15.w
        ),
        child: Column(
          children: [
            Container(
             // padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 4.h),
              decoration: BoxDecoration(
                color: Colors.grey.shade200, // background of circular container
                borderRadius: BorderRadius.circular(10.r), // fully circular
              ),
              child: Column(
                children: [
                  TextField(

                    decoration: InputDecoration(
                      isDense: true,
                      hintText: "Search techniques...",
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 12.sp,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500
                      ),
                      prefixIcon:  Icon(BootstrapIcons.search, color: Colors.grey,size: 13.r,),
                      filled: true,
                      fillColor: Colors.grey.shade200, // match container background
                      contentPadding: EdgeInsets.symmetric( horizontal: 4.w),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.r), // circular
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            )
          ],
        ),
      ),
    );
  }
}
