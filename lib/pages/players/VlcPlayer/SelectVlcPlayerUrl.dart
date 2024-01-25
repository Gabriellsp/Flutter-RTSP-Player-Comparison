import 'package:flutter/material.dart';
import 'package:flutter_player/db/db.dart';
import 'package:flutter_player/pages/players/VlcPlayer/VlcPlayerWidget.dart';

class SelectVlcPlayerUrl extends StatefulWidget {
  const SelectVlcPlayerUrl({super.key});

  @override
  State<SelectVlcPlayerUrl> createState() => _SelectVlcPlayerUrlState();
}

class _SelectVlcPlayerUrlState extends State<SelectVlcPlayerUrl> {
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
                      builder: (context) => VlcPlayerWidget(
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
                      builder: (context) => VlcPlayerWidget(
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
                      builder: (context) => VlcPlayerWidget(
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
