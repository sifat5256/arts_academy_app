import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DrillsPracticedSection extends StatelessWidget {
  final List<String> drills;

  const DrillsPracticedSection({super.key, required this.drills});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Drills Practiced (${drills.length})",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 13.sp,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 6.h),
          Column(
            children: drills
                .map(
                  (drill) => Padding(
                padding: EdgeInsets.symmetric(vertical: 3.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.check, color: Colors.green, size: 16),
                    SizedBox(width: 8.w),
                    Expanded(
                      child: Text(
                        drill,
                        style: GoogleFonts.poppins(
                          fontSize: 12.sp,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
                .toList(),
          ),
        ],
      ),
    );
  }
}
