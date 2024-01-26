import 'package:flutter/material.dart';
import 'package:flutter_player/db/db.dart';
import 'package:flutter_player/pages/players/FijkPlayer/FijkPlayerWidget.dart';
import 'package:flutter_player/pages/players/MediaKit/MediaKitPlayerWidget.dart';
import 'package:flutter_player/pages/players/VideoPlayer/VideoPlayerWidget.dart';
import 'package:flutter_player/pages/players/VlcPlayer/VlcPlayerWidget.dart';

class HlsVsRtspPuroPage extends StatefulWidget {
  const HlsVsRtspPuroPage({super.key});

  @override
  State<HlsVsRtspPuroPage> createState() => _HlsVsRtspPuroPageState();
}

class _HlsVsRtspPuroPageState extends State<HlsVsRtspPuroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hls VS RTSP'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text("VideoPlayer (HLS):"),
            VideoPlayerWidget(
              videoUrl: Db.hlsUrl,
            ),
            const Text("VlcPlayer (RTSP):"),
            VlcPlayerWidget(
              videoUrl: Db.rtspUrl,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("MediaKitPlayer (RTSP):"),
            MediaKitPlayerWidget(
              videoUrl: Db.rtspUrl,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("FijkPlayer (RTSP):"),
            FijkPlayerWidget(
              videoUrl: Db.rtspUrl,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
