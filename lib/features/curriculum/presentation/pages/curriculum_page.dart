import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import '../controllers/curriculum_controller.dart';
import '../widgets/curriculum_section.dart';
import '../widgets/search_box.dart';




class CurriculumPage extends StatelessWidget {
  const CurriculumPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CurriculumController());

    return Scaffold(
      backgroundColor: Colors.grey.shade100.withOpacity(0.5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        elevation: 0,
        title: Text(
          "Technique Library",
          style: GoogleFonts.poppins(
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      body: GetBuilder<CurriculumController>(
        builder: (_) => ListView(
         // padding: EdgeInsets.symmetric(vertical: 10.h),
          children: [
            const SearchBox(),
            SizedBox(
              height: 15.h,
            ),

            // ==== SECTION 1 ====
            CurriculumSection(
              index: 0,
              title: "Brazilian Jiu-Jitsu",
              iconImage: "https://media.istockphoto.com/id/2097346937/photo/karate-training-kids-of-different-ages-in-kimono.jpg?s=612x612&w=0&k=20&c=LxBeJMC_IoAvp350MREpJ-lYVhnTWpLPzigUsZKLguY=",
              isExpanded: controller.expandedIndex.value == 0,
              onTap: () => controller.toggleSection(0),
              techniques: [
                {
                  "title": "Guard Pass Fundamentals",
                  "subtitle": "Ground Control",
                  "duration": "12:45",
                  "image": "https://media.istockphoto.com/id/2097346937/photo/karate-training-kids-of-different-ages-in-kimono.jpg?s=612x612&w=0&k=20&c=LxBeJMC_IoAvp350MREpJ-lYVhnTWpLPzigUsZKLguY=",
                },
                {
                  "title": "Armbar from Mount",
                  "subtitle": "Submissions",
                  "duration": "8:30",
                  "image": "https://media.istockphoto.com/id/2097346937/photo/karate-training-kids-of-different-ages-in-kimono.jpg?s=612x612&w=0&k=20&c=LxBeJMC_IoAvp350MREpJ-lYVhnTWpLPzigUsZKLguY=",
                },
                {
                  "title": "Hip Escape Basics",
                  "subtitle": "Escapes",
                  "duration": "10:15",
                  "image": "https://media.istockphoto.com/id/2097346937/photo/karate-training-kids-of-different-ages-in-kimono.jpg?s=612x612&w=0&k=20&c=LxBeJMC_IoAvp350MREpJ-lYVhnTWpLPzigUsZKLguY=",
                },
              ],
            ),

            // ==== SECTION 2 ====
            CurriculumSection(
              index: 1,
              title: "Capoeira",
              iconImage: "https://media.istockphoto.com/id/2097346937/photo/karate-training-kids-of-different-ages-in-kimono.jpg?s=612x612&w=0&k=20&c=LxBeJMC_IoAvp350MREpJ-lYVhnTWpLPzigUsZKLguY=",
              isExpanded: controller.expandedIndex.value == 1,
              onTap: () => controller.toggleSection(1),
              techniques: [],
            ),

            // ==== SECTION 3 ====
            CurriculumSection(
              index: 2,
              title: "Eskrima",
              iconImage: "https://media.istockphoto.com/id/2097346937/photo/karate-training-kids-of-different-ages-in-kimono.jpg?s=612x612&w=0&k=20&c=LxBeJMC_IoAvp350MREpJ-lYVhnTWpLPzigUsZKLguY=",
              isExpanded: controller.expandedIndex.value == 2,
              onTap: () => controller.toggleSection(2),
              techniques: [
                {
                  "title": "Single Stick Flow",
                  "subtitle": "Weapons",
                  "duration": "18:45",
                  "image": "https://media.istockphoto.com/id/2097346937/photo/karate-training-kids-of-different-ages-in-kimono.jpg?s=612x612&w=0&k=20&c=LxBeJMC_IoAvp350MREpJ-lYVhnTWpLPzigUsZKLguY=",
                },
              ],
            ),
          ],
        ),
      ),
    );
  }
}
