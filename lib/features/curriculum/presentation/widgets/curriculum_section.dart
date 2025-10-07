import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'technique_item.dart';

class CurriculumSection extends StatelessWidget {
  final int index;
  final String title;
  final String iconImage;
  final bool isExpanded;
  final VoidCallback onTap;
  final List<Map<String, String>> techniques;

  const CurriculumSection({
    super.key,
    required this.index,
    required this.title,
    required this.iconImage,
    required this.isExpanded,
    required this.onTap,
    required this.techniques,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Section header
        GestureDetector(
          onTap: onTap,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
            padding: EdgeInsets.all(12.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(
                color: Colors.grey.shade300
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                Image.asset(iconImage, width: 30.w, height: 30.w),
                SizedBox(width: 10.w),
                Expanded(
                  child: Text(
                    title,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp,
                      color: Colors.black,
                    ),
                  ),
                ),
                Icon(
                  isExpanded
                      ? BootstrapIcons.chevron_up
                      : BootstrapIcons.chevron_down,
                  size: 14.sp,
                  color: Colors.black54,
                ),
              ],
            ),
          ),
        ),

        // Expanded list
        if (isExpanded)
          Column(
            children: techniques
                .map(
                  (tech) => TechniqueItem(
                title: tech["title"]!,
                subtitle: tech["subtitle"]!,
                duration: tech["duration"]!,
                imagePath: tech["image"]!,
              ),
            )
                .toList(),
          ),
      ],
    );
  }
}
