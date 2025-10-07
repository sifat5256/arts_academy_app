import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/about_card.dart';
import '../widgets/settings_item.dart';
import '../widgets/settings_section_title.dart';

import 'package:bootstrap_icons/bootstrap_icons.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0, // remove shadow completely
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,

        centerTitle: true,
        title: Text(
          "Settings",
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView(
        children: [
          const SettingsSectionTitle(title: "Account"),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 0.h),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5)
              ),
              child: Card(
                elevation: 0.2,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                  child: Column(
                    children: [
                      const SettingsItem(
                        icon: BootstrapIcons.box_arrow_right,
                        title: "Log Out",
                      ),
                      Divider(
                        color: Colors.grey.shade200,
                      ),
                      const SettingsItem(
                        icon: BootstrapIcons.trash,
                        title: "Delete Account",
                        iconColor: Colors.red,
                        isDestructive: true,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),


          const SettingsSectionTitle(title: "Notifications"),


          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 0.h),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Card(
                elevation: 0.2,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                  child: Column(
                    children: [
                      const SettingsItem(icon: BootstrapIcons.bell, title: "Class Reminders"),
                      Divider(
                        color: Colors.grey.shade200,
                      ),
                      const SettingsItem(icon: BootstrapIcons.calendar_check,iconColor: Colors.green, title: "Schedule Updates"),
                      Divider(
                        color: Colors.grey.shade200,
                      ),
                      const SettingsItem(icon: BootstrapIcons.flag,iconColor: Colors.amber, title: "Progress Alerts"),
                      Divider(
                        color: Colors.grey.shade200,
                      ),
                      const SettingsItem(icon: BootstrapIcons.volume_up, title: "Promotions & News"),
                    ],
                  ),
                ),
              ),
            ),
          ),


          const SettingsSectionTitle(title: "Privacy and Legal"),


          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 0.h),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Card(
                elevation: 0.2,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                  child: Column(
                    children: [


                      const SettingsItem(icon: BootstrapIcons.send, iconColor:Colors.black54,title: "Terms of Service"),
                      Divider(
                        color: Colors.grey.shade200,
                      ),
                      const SettingsItem(icon: BootstrapIcons.gear,iconColor: Colors.black54, title: "Privacy Policy"),
                    ],
                  ),
                ),
              ),
            ),
          ),


          const SettingsSectionTitle(title: "Contact"),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 0.h),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Card(
                elevation: 0.2,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                  child: Column(
                    children: [




                      const SettingsItem(icon: BootstrapIcons.envelope, title: "Email Support"),
                      Divider(
                        color: Colors.grey.shade200,
                      ),
                      const SettingsItem(icon: BootstrapIcons.telephone,iconColor: Colors.green, title: "Call Academy"),
                      Divider(
                        color: Colors.grey.shade200,
                      ),
                      const SettingsItem(icon: BootstrapIcons.house_door,iconColor: Colors.amber, title: "Visit Website"),
                    ],
                  ),
                ),
              ),
            ),
          ),


          const SettingsSectionTitle(title: "About"),
          const AboutCard(),
        ],
      ),
    );
  }
}
