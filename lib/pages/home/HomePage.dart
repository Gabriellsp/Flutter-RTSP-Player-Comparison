import 'package:flutter/material.dart';
import 'package:flutter_player/pages/all_players/AllPlayersPage.dart';
import 'package:flutter_player/db/db.dart';
import 'package:flutter_player/pages/players/FijkPlayer/FijkPlayerWidget.dart';
import 'package:flutter_player/pages/players/MediaKit/MediaKitPlayerWidget.dart';
import 'package:flutter_player/pages/players/VideoPlayer/VideoPlayerWidget.dart';
import 'package:flutter_player/pages/players/VlcPlayer/VlcPlayerWidget.dart';
import 'package:flutter_player/pages/video_player_vs_mediakit/VideoPlayer_VS_MediaKit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _rtspTextController =
      TextEditingController(text: Db.rtspUrl);
  final TextEditingController _rtspNimbleTextController =
      TextEditingController(text: Db.rtspNimbleUrl);
  final TextEditingController _hlsTextController =
      TextEditingController(text: Db.hlsUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Comparativo de players')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text("RTSP Câmera: "),
                  Expanded(
                    child: SizedBox(
                      height: 32,
                      width: 200,
                      child: TextField(
                        controller: _rtspTextController,
                        onChanged: (value) {
                          Db.rtspUrl = value;
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  const Text("RTSP Nimble: "),
                  Expanded(
                    child: SizedBox(
                      height: 32,
                      child: TextField(
                        controller: _rtspNimbleTextController,
                        onChanged: (value) {
                          Db.rtspNimbleUrl = value;
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  const Text("Hls: "),
                  Expanded(
                    child: SizedBox(
                      height: 32,
                      child: TextField(
                        controller: _hlsTextController,
                        onChanged: (value) {
                          Db.hlsUrl = value;
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 64,
              ),
              GridView.count(
                primary: false,
                padding: const EdgeInsets.all(0),
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                crossAxisCount: 2,
                childAspectRatio: 2 / 1,
                shrinkWrap: true,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Scaffold(
                                  appBar: AppBar(
                                    backgroundColor: Theme.of(context)
                                        .colorScheme
                                        .inversePrimary,
                                    title: const Text("FijkPlayer"),
                                  ),
                                  body: const Center(
                                    child: FijkPlayerWidget(
                                      videoUrl:
                                          "rtsp://admin:Seventh@23@187.49.236.67:45869/cam/realmonitor?channel=1&subtype=0",
                                    ),
                                  ),
                                )),
                      );
                    },
                    child: const Text('FijkPlayer'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Scaffold(
                                  appBar: AppBar(
                                    backgroundColor: Theme.of(context)
                                        .colorScheme
                                        .inversePrimary,
                                    title: const Text("MediaKit Player"),
                                  ),
                                  body: const Center(
                                    child: MediaKitPlayerWidget(
                                      videoUrl:
                                          "rtsp://admin:Seventh@23@187.49.236.67:45869/cam/realmonitor?channel=1&subtype=0",
                                    ),
                                  ),
                                )),
                      );
                    },
                    child: const Text('MediaKit'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Scaffold(
                                  appBar: AppBar(
                                    backgroundColor: Theme.of(context)
                                        .colorScheme
                                        .inversePrimary,
                                    title: const Text("Video Player"),
                                  ),
                                  body: const Center(
                                    child: VideoPlayerWidget(
                                      videoUrl:
                                          'https://cloudcam01-development.dguardcloud.com.br/live/5F2gNJ2el.stream/playlist.m3u8',
                                    ),
                                  ),
                                )),
                      );
                    },
                    child: const Text('VideoPlayer'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Scaffold(
                                  appBar: AppBar(
                                    backgroundColor: Theme.of(context)
                                        .colorScheme
                                        .inversePrimary,
                                    title: const Text("Vlc Player"),
                                  ),
                                  body: const Center(
                                    child: VlcPlayerWidget(
                                      videoUrl:
                                          "rtsp://admin:Seventh@23@187.49.236.67:45869/cam/realmonitor?channel=1&subtype=0",
                                    ),
                                  ),
                                )),
                      );
                    },
                    child: const Text('Vlc Player'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const VideoPlayerVSMediaKit()),
                      );
                    },
                    child: const Text('VideoPlayer Vs MediaKit'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AllPlayersPage()),
                      );
                    },
                    child: const Text('Todos os players'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
