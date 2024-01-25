import 'package:flutter/material.dart';
import 'package:flutter_player/db/db.dart';
import 'package:flutter_player/pages/players/VlcPlayer/VlcPlayerPage.dart';

class SelectVlcPlayerUrl extends StatelessWidget {
  const SelectVlcPlayerUrl({super.key});

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
                      builder: (context) => VlcPlayerPage(
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
                      builder: (context) => VlcPlayerPage(
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
                      builder: (context) => VlcPlayerPage(
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
