import 'package:flutter/material.dart';
import 'package:flutter_player/pages/players/FijkPlayer/FijkPlayerWidget.dart';
import 'package:flutter_player/pages/players/MediaKit/MediaKitPlayerWidget.dart';
import 'package:flutter_player/pages/players/VideoPlayer/VideoPlayerWidget.dart';
import 'package:flutter_player/pages/players/VlcPlayer/VlcPlayerWidget.dart';

class AllPlayersPage extends StatefulWidget {
  const AllPlayersPage({super.key});

  @override
  State<AllPlayersPage> createState() => _AllPlayersPageState();
}

class _AllPlayersPageState extends State<AllPlayersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos os Players'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Text("FijkPlayer: "),
            FijkPlayerWidget(
              videoUrl:
                  "rtsp://admin:Seventh@23@187.49.236.67:45869/cam/realmonitor?channel=1&subtype=0",
            ),
            SizedBox(
              height: 20,
            ),
            Text("MediaKitPlayer: "),
            MediaKitPlayerWidget(
              videoUrl:
                  "rtsp://admin:Seventh@23@187.49.236.67:45869/cam/realmonitor?channel=1&subtype=0",
            ),
            SizedBox(
              height: 20,
            ),
            Text("VideoPlayer: "),
            VideoPlayerWidget(
              videoUrl:
                  'https://cloudcam01-development.dguardcloud.com.br/live/5F2gNJ2el.stream/playlist.m3u8',
            ),
            SizedBox(
              height: 20,
            ),
            Text("VlcPlayer: "),
            VlcPlayerWidget(
              videoUrl:
                  "rtsp://admin:Seventh@23@187.49.236.67:45869/cam/realmonitor?channel=1&subtype=0",
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
