import 'package:flutter/material.dart';
import 'package:flutter_player/db/db.dart';
import 'package:flutter_player/pages/players/VideoPlayer/VideoPlayerPage.dart';

class SelectVideoPlayerUrl extends StatefulWidget {
  const SelectVideoPlayerUrl({super.key});

  @override
  State<SelectVideoPlayerUrl> createState() => _SelectVideoPlayerUrlState();
}

class _SelectVideoPlayerUrlState extends State<SelectVideoPlayerUrl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selecione a stream da camera'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => VideoPlayerPage(
                            videoUrl: Db.hlsUrl,
                          )),
                );
              },
              child: const Text('Hls'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => VideoPlayerPage(
                            videoUrl: Db.rtspUrl,
                          )),
                );
              },
              child: const Text('Rtsp'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => VideoPlayerPage(
                            videoUrl: Db.rtspNimbleUrl,
                          )),
                );
              },
              child: const Text('Rtsp Nimble'),
            ),
          ],
        ),
      ),
    );
  }
}
