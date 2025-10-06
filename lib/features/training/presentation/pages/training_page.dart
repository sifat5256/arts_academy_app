import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/training_controller.dart';
import '../widgets/header_navigation.dart';
import '../widgets/training_card.dart';

class TrainingPage extends StatelessWidget {
  const TrainingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50.withOpacity(0.3),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Weekly Training",
          style: GoogleFonts.poppins(
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),

      // ✅ Changed from Obx → GetBuilder
      body: GetBuilder<TrainingController>(
        init: TrainingController(),
        builder: (controller) {
          return ListView(
            children: [
              const HeaderNavigation(),
              ...controller.trainings
                  .map((e) => TrainingCard(training: e))
                  .toList(),
            ],
          );
        },
      ),
    );
  }
}
