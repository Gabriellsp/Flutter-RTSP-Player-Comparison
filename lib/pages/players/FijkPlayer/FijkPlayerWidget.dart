// ignore_for_file: file_names

import 'package:fijkplayer/fijkplayer.dart';
import 'package:flutter/material.dart';

class FijkPlayerWidget extends StatefulWidget {
  final String videoUrl;
  const FijkPlayerWidget({
    super.key,
    required this.videoUrl,
  });

  @override
  State<FijkPlayerWidget> createState() => _FijkPlayerWidgetState();
}

class _FijkPlayerWidgetState extends State<FijkPlayerWidget> {
  final FijkPlayer player = FijkPlayer();

  @override
  void initState() {
    super.initState();
    player.setDataSource(
      widget.videoUrl,
      autoPlay: true,
    );
  }

  @override
  void dispose() {
    super.dispose();
    player.stop();
    player.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FijkView(
      height: 150,
      player: player,
      color: Colors.transparent,
    );
  }
}
