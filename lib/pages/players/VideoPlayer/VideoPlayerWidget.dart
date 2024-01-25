import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  final String videoUrl;
  const VideoPlayerWidget({super.key, required this.videoUrl});

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl));

    initialize();
  }

  Future<void> initialize() async {
    await _controller.initialize();
    await _controller.play();
    setState(() {});
  }

  @override
  void dispose() async {
    // TODO: implement dispose
    super.dispose();
    await _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 150, child: VideoPlayer(_controller));
  }
}
