import 'package:flutter/material.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

class MediaKitPlayerWidget extends StatefulWidget {
  final String videoUrl;
  const MediaKitPlayerWidget({super.key, required this.videoUrl});

  @override
  State<MediaKitPlayerWidget> createState() => _MediaKitPlayerWidgetState();
}

class _MediaKitPlayerWidgetState extends State<MediaKitPlayerWidget> {
  late final player = Player();
  late final controller = VideoController(player);

  @override
  void initState() {
    super.initState();
    player.open(Media(widget.videoUrl));
  }

  @override
  void dispose() async {
    super.dispose();
    await player.stop();
    await player.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Video(
      height: 150,
      controller: controller,
    );
  }
}
