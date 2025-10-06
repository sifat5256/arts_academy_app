import 'package:get/get.dart';
import '../../data/model/training_model.dart';

class TrainingController extends GetxController {
  List<TrainingModel> trainings = [];

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  void loadData() {
    trainings = [
      TrainingModel(
        day: "Monday",
        date: "Oct 4",
        program: "BJJ",
        title: "Guard Passes & Escapes",
        instructor: "Xingu Del Rosario",
        time: "7:00 PM",
        videoUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT42giTxBcOLZItBWNnRAxJj2wc_64pj8Iu-6Wlug79sHUkKSyAz5YTzds&s",
        videoDuration: "12:45",
        notes:
        "Focused on hip escape fundamentals and guard retention. Practiced knee shield guard and worked on creating angles for escapes.",
        drills: [
          "Hip Escape Drill",
          "Knee Shield Positioning",
          "Frame and Escape Sequence",
          "Guard Retention Flow",
          "Angle Creation Practice"
        ],
      ),
      TrainingModel(
        day: "Tuesday",
        date: "Oct 5",
        program: "CAPOEIRA",
        title: "Ginga & Basic Movements",
        instructor: "Paris Synder",
        time: "6:30 PM",
        isUpcoming: true,
      ),
      TrainingModel(
        day: "Wednesday",
        date: "Oct 6",
        program: "ESKRIMA",
        title: "Single Stick Flow Patterns",
        instructor: "Fernando Chien",
        time: "12:00 PM",
        videoUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT42giTxBcOLZItBWNnRAxJj2wc_64pj8Iu-6Wlug79sHUkKSyAz5YTzds&s",
        videoDuration: "18:30",
        notes:
        "Advanced single stick flow patterns focusing on 6-count and 8-count combinations. Emphasized smooth transitions.",
        drills: [
          "8-Count Advanced Sequence",
          "Distance Control Drill",
          "Transition Timing Practice",
          "Defense to Attack Flow",
          "Stick Sensitivity Drill",
          "Pattern Variations",
          "Free Flow Practice"
        ],
      ),
      TrainingModel(
        day: "Thursday",
        date: "Oct 7",
        program: "BJJ",
        title: "Mount Control & Submissions",
        instructor: "Xingu Del Rosario",
        time: "6:30 PM",
        isUpcoming: true,
      ),
      TrainingModel(
        day: "Friday",
        date: "Oct 8",
        program: "CAPOEIRA",
        title: "Kicks & Dodges",
        instructor: "Paris Synder",
        time: "7:00 PM",
        isUpcoming: true,
      ),
    ];

    update(); // important to refresh GetBuilder
  }
}
