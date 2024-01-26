import 'package:flutter/material.dart';
import 'package:flutter_player/db/db.dart';
import 'package:flutter_player/pages/players/FijkPlayer/FijkPlayerWidget.dart';
import 'package:flutter_player/pages/players/MediaKit/MediaKitPlayerWidget.dart';
import 'package:flutter_player/pages/players/VideoPlayer/VideoPlayerWidget.dart';
import 'package:flutter_player/pages/players/VlcPlayer/VlcPlayerWidget.dart';

class HlsVsRtspNimblePage extends StatefulWidget {
  const HlsVsRtspNimblePage({super.key});

  @override
  State<HlsVsRtspNimblePage> createState() => _HlsVsRtspNimblePageState();
}

class _HlsVsRtspNimblePageState extends State<HlsVsRtspNimblePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hls VS RTSP Nimble'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text("VideoPlayer (HLS):"),
            VideoPlayerWidget(
              videoUrl: Db.hlsUrl,
            ),
            const Text("VlcPlayer (RTSP Nimble):"),
            const SizedBox(
              height: 20,
            ),
            VlcPlayerWidget(
              videoUrl: Db.rtspNimbleUrl,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("MediaKitPlayer (RTSP Nimble):"),
            MediaKitPlayerWidget(
              videoUrl: Db.rtspNimbleUrl,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("FijkPlayer (RTSP Nimble):"),
            FijkPlayerWidget(
              videoUrl: Db.rtspNimbleUrl,
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
