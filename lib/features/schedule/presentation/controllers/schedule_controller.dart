import 'package:get/get.dart';

class ScheduleController extends GetxController {
  final selectedDate = 'Mon, Oct 13'.obs;

  final dailySchedule = [
    {
      "time": "6:00 AM–7:30 AM",
      "duration": "90 min",
      "title": "Adults BJJ",
      "instructor": "Xingu Del Rosario",
      "tag": "ADULTS BJJ",
      "color": 0xFF4285F4,
    },
    {
      "time": "12:00 PM–1:15 PM",
      "duration": "75 min",
      "title": "Womens BJJ",
      "instructor": "Paris Synder",
      "tag": "WOMENS BJJ",
      "color": 0xFFE91E63,
    },
    {
      "time": "4:30 PM–5:15 PM",
      "duration": "45 min",
      "title": "Kids BJJ",
      "instructor": "Fernando Chien",
      "tag": "KIDS BJJ",
      "color": 0xFFFF9800,
    },
    {
      "time": "6:00 PM–7:00 PM",
      "duration": "60 min",
      "title": "Adult Capoeira",
      "instructor": "Paris Synder",
      "tag": "ADULT CAPOEIRA",
      "color": 0xFF4CAF50,
    },
    {
      "time": "7:30 PM–9:00 PM",
      "duration": "90 min",
      "title": "Adults BJJ",
      "instructor": "Xingu Del Rosario",
      "tag": "ADULTS BJJ",
      "color": 0xFF4285F4,
    },
  ];

  final weeklySchedule = {
    "Monday": [
      {
        "time": "6:00 AM",
        "duration": "90 min",
        "title": "Adults BJJ",
        "instructor": "Xingu Del Rosario",
        "tag": "ADULTS BJJ",
        "color": 0xFF4285F4,
      },
      {
        "time": "12:00 PM",
        "duration": "75 min",
        "title": "Womens BJJ",
        "instructor": "Paris Synder",
        "tag": "WOMENS BJJ",
        "color": 0xFFE91E63,
      },
      {
        "time": "4:30 PM",
        "duration": "45 min",
        "title": "Kids BJJ",
        "instructor": "Fernando Chien",
        "tag": "KIDS BJJ",
        "color": 0xFFFF9800,
      },
      {
        "time": "6:00 PM",
        "duration": "60 min",
        "title": "Adult Capoeira",
        "instructor": "Paris Synder",
        "tag": "ADULT CAPOEIRA",
        "color": 0xFF4CAF50,
      },
      {
        "time": "7:30 PM",
        "duration": "90 min",
        "title": "Adults BJJ",
        "instructor": "Xingu Del Rosario",
        "tag": "ADULTS BJJ",
        "color": 0xFF4285F4,
      },
    ],
    "Tuesday": [
      {
        "time": "7:00 AM",
        "duration": "75 min",
        "title": "Adults BJJ",
        "instructor": "Fernando Chien",
        "tag": "ADULTS BJJ",
        "color": 0xFF4285F4,
      },
      {
        "time": "12:00 PM",
        "duration": "75 min",
        "title": "Eskrima Weapons",
        "instructor": "Carlos Martinez",
        "tag": "ESKRIMA WEAPONS",
        "color": 0xFF9C27B0,
      },
      {
        "time": "4:30 PM",
        "duration": "75 min",
        "title": "Womens BJJ",
        "instructor": "Paris Synder",
        "tag": "WOMENS BJJ",
        "color": 0xFFE91E63,
      },
      {
        "time": "6:00 PM",
        "duration": "60 min",
        "title": "Kids BJJ",
        "instructor": "Fernando Chien",
        "tag": "KIDS BJJ",
        "color": 0xFFFF9800,
      },
      {
        "time": "7:30 PM",
        "duration": "90 min",
        "title": "Adults BJJ",
        "instructor": "Xingu Del Rosario",
        "tag": "ADULTS BJJ",
        "color": 0xFF4285F4,
      },
    ],
  };
}