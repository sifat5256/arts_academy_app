import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import '../../data/model/training_model.dart';

class TrainingCard extends StatefulWidget {
  final TrainingModel training;

  const TrainingCard({super.key, required this.training});

  @override
  State<TrainingCard> createState() => _TrainingCardState();
}

class _TrainingCardState extends State<TrainingCard> {
  VideoPlayerController? _videoController;
  ChewieController? _chewieController;
  bool _isPlaying = false;

  Future<void> _initializeVideo() async {
    // load from assets (you can modify to load from network later if needed)
    _videoController = VideoPlayerController.asset('assets/videos/demo.mp4');
    await _videoController!.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoController!,
      autoPlay: true,
      looping: false,
      allowFullScreen: true,
      allowMuting: true,
      showControls: true,
    );

    setState(() {
      _isPlaying = true;
    });
  }

  @override
  void dispose() {
    _videoController?.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final training = widget.training;
    final colorMap = {
      'BJJ': Colors.blue,
      'CAPOEIRA': Colors.teal,
      'Eskrima': Colors.orange,
    };

    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 14.w),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      elevation: 0.4,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Day + Badge
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(training.day,
                        style: GoogleFonts.poppins(
                            fontSize: 16.sp, fontWeight: FontWeight.w600)),
                    Text(training.date,
                        style: GoogleFonts.poppins(
                            fontSize: 12.sp, fontWeight: FontWeight.w500,color: Colors.grey)),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    color: colorMap[training.program]?.withOpacity(0.10),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Text(training.program,
                      style: GoogleFonts.poppins(
                        color: colorMap[training.program],
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      )),
                ),
              ],
            ),
            SizedBox(height: 8.h),

            Text(training.title,
                style: GoogleFonts.poppins(
                    fontSize: 16.sp, fontWeight: FontWeight.w600)),
            Text("with ${training.instructor}",
                style: GoogleFonts.poppins(
                    fontSize: 13.sp, color: Colors.grey.shade600)),
            Text(training.time,
                style:
                GoogleFonts.poppins(fontSize: 11.sp, color: Colors.blue)),

            SizedBox(height: 10.h),


            if (training.videoDuration != null)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (!_isPlaying)
                    GestureDetector(
                      onTap: _initializeVideo,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)
                            ),
                            child: Image.asset(
                              training.videoUrl ??
                                  'assets/images/demo.jpg',
                              height: 150.h,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black54,
                            ),
                            padding: EdgeInsets.all(8.w),
                            child:  Icon(Icons.play_arrow,
                                color: Colors.white, size: 30.r),
                          ),
                          Positioned(
                            right: 4.w,
                              bottom: 4.h,


                              child: Container(
                                height: 20.h,
                                width: 40.w,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5)

                                ),
                                child: Center(
                                  child:   Text(
                                    "${training.videoDuration}",
                                    style: GoogleFonts.poppins(fontSize: 12.sp,color: Colors.white),
                                  ),
                                ),
                              ))
                        ],
                      ),
                    )
                  else if (_chewieController != null &&
                      _chewieController!
                          .videoPlayerController.value.isInitialized)
                    AspectRatio(
                      aspectRatio:
                      _videoController!.value.aspectRatio,
                      child: Chewie(controller: _chewieController!),
                    ),
                  SizedBox(height: 4.h),
                  Text(
                    "Recap Video",
                    style: GoogleFonts.poppins(fontSize: 12.sp,color: Colors.grey,fontWeight: FontWeight.w600),
                  ),
                ],
              ),

            SizedBox(height: 8.h),

            // Notes
            if (training.notes != null)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Lesson Notes",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 13.sp)),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(8.w),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Text(training.notes!,
                        style: GoogleFonts.poppins(fontSize: 12.sp),
                        textAlign: TextAlign.start),
                  ),
                ],
              ),

            // Drills
            if (training.drills != null)
              Padding(
                padding: EdgeInsets.only(top: 8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Drills Practiced (${training.drills!.length})",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600, fontSize: 13.sp)),
                    ...training.drills!.map(
                          (e) => Padding(
                        padding: EdgeInsets.symmetric(vertical: 3.h),
                        child: Container(
                          padding: EdgeInsets.all(6.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.grey.shade100.withOpacity(0.5),
                          ),
                          child: Row(
                            children: [
                               Icon(Icons.check,
                                  size: 14, color: Colors.green.shade600),
                              SizedBox(width: 5.w),
                              Text(e,
                                  style: GoogleFonts.poppins(fontSize: 12.sp)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            // Upcoming
            if (training.isUpcoming)
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 8.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Icon(Icons.list, size: 20.r, color: Colors.orange),
                      SizedBox(width: 6.w),
                      Text("Upcoming",
                          style: GoogleFonts.poppins(
                            color: Colors.orange,
                            fontWeight: FontWeight.w700,
                            fontSize: 14.sp
                          )),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
