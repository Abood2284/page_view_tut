import 'package:flutter/material.dart';
import 'package:page_view_tut/widgets/video_player.dart';
import 'package:video_player/video_player.dart';

class SinglePageView extends StatefulWidget {
  const SinglePageView({super.key});

  @override
  State<SinglePageView> createState() => _SinglePageViewState();
}

class _SinglePageViewState extends State<SinglePageView> {
  late VideoPlayerController controller;
  final asset = 'assets/video/sea.mp4';
  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(asset)
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((value) => controller.play());
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VideoPlayerWidget(controller: controller);
  }
}
