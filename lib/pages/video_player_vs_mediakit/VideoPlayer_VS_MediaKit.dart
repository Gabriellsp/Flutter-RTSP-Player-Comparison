import 'package:flutter/material.dart';
import 'package:flutter_player/pages/players/FijkPlayer/FijkPlayerWidget.dart';
import 'package:flutter_player/pages/players/MediaKit/MediaKitPlayerWidget.dart';
import 'package:flutter_player/pages/players/VideoPlayer/VideoPlayerWidget.dart';
import 'package:flutter_player/pages/players/VlcPlayer/VlcPlayerWidget.dart';

class VideoPlayerVSMediaKit extends StatefulWidget {
  const VideoPlayerVSMediaKit({super.key});

  @override
  State<VideoPlayerVSMediaKit> createState() => _VideoPlayerVSMediaKitState();
}

class _VideoPlayerVSMediaKitState extends State<VideoPlayerVSMediaKit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('VideoPlayer vs MediaKit')),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Text("FijkPlayerPage RTSP Direto: "),
            FijkPlayerWidget(
              videoUrl:
                  'rtsp://admin:Camerasip135.@177.53.246.146:5208/cam/realmonitor?channel=1&subtype=0',
            ),
            SizedBox(
              height: 20,
            ),
            Text("VlcPlayer RTSP Direto: "),
            VlcPlayerWidget(
              videoUrl:
                  'rtsp://admin:Camerasip135.@177.53.246.146:5208/cam/realmonitor?channel=1&subtype=0',
            ),
            SizedBox(
              height: 20,
            ),
            // Text("MediaKitPlayer RTSP Nimble: "),
            // MediaKitPlayerPage(
            //   videoUrl:
            //       'rtsp://cloudcam01-development.dguardcloud.com.br:9554/live/5F2gNJ2el.stream',
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            Text("VideoPlayer: "),
            VideoPlayerWidget(
              videoUrl:
                  'https://cloudcam01-development.dguardcloud.com.br/live/1Z9BddxtB.stream/playlist.m3u8',
            ),
          ],
        ),
      ),
    );
  }
}
