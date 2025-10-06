class TrainingModel {
  final String day;
  final String date;
  final String program;
  final String title;
  final String instructor;
  final String time;
  final String? videoUrl;
  final String? videoDuration;
  final String? notes;
  final List<String>? drills;
  final bool isUpcoming;

  TrainingModel({
    required this.day,
    required this.date,
    required this.program,
    required this.title,
    required this.instructor,
    required this.time,
    this.videoUrl,
    this.videoDuration,
    this.notes,
    this.drills,
    this.isUpcoming = false,
  });
}
