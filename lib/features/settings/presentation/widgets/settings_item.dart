import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';

class SettingsItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color? iconColor;
  final bool isDestructive;
  final VoidCallback? onTap;

  const SettingsItem({
    super.key,
    required this.icon,
    required this.title,
    this.iconColor,
    this.isDestructive = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(


        child: Row(
          children: [
            Icon(icon, color: iconColor ?? Colors.blue, size: 14.sp),
            SizedBox(width: 14.w),
            Expanded(
              child: Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: isDestructive ? Colors.red : Colors.black87,
                ),
              ),
            ),
            Icon(BootstrapIcons.chevron_right, size: 13.sp, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
