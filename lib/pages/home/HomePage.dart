import 'package:flutter/material.dart';
import 'package:flutter_player/pages/all_players_hls/AllPlayersHlsPage.dart';
import 'package:flutter_player/db/db.dart';
import 'package:flutter_player/pages/compare_two_players/SelectTwoPlayers.dart';
import 'package:flutter_player/pages/hls_vs_rtsp_nimble/HlsVsRtspNimblePage.dart';
import 'package:flutter_player/pages/hls_vs_rtsp_puro/HlsVsRtspPuroPage.dart';
import 'package:flutter_player/pages/players/MediaKit/SelectMediaKitPlayerUrl.dart';
import 'package:flutter_player/pages/players/VideoPlayer/SelectVideoPlayerUrl.dart';
import 'package:flutter_player/pages/players/VlcPlayer/SelectVlcPlayerUrl.dart';

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
                  const Text(
                    "Hls: ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
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
                height: 8,
              ),
              Row(
                children: [
                  const Text(
                    "RTSP Câmera: ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
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
                  const Text(
                    "RTSP Nimble: ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
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
                height: 24,
              ),
              const Text(
                "Players individuais: ",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              GridView.count(
                primary: false,
                padding: const EdgeInsets.all(0),
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                crossAxisCount: 2,
                childAspectRatio: 3 / 1,
                shrinkWrap: true,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SelectVideoPlayerUrl()),
                      );
                    },
                    child: const Text(
                      'VideoPlayer',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SelectVlcPlayerUrl()),
                      );
                    },
                    child: const Text(
                      'VlcPlayer',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const SelectMediaKitPlayerUrl()),
                      );
                    },
                    child: const Text(
                      'MediaKit',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                "Comparação entre players: ",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              GridView.count(
                primary: false,
                padding: const EdgeInsets.all(0),
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                crossAxisCount: 2,
                childAspectRatio: 3 / 1,
                shrinkWrap: true,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HlsVsRtspPuroPage()),
                      );
                    },
                    child: const Text(
                      'HLS Vs RTSP',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HlsVsRtspNimblePage()),
                      );
                    },
                    child: const Text(
                      'HLS Vs RTSP Nimble',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AllPlayersHlsPage()),
                      );
                    },
                    child: const Text(
                      'Todos os players Hls',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SelectTwoPlayers()),
                      );
                    },
                    child: const Text(
                      'Comparar 2 players',
                      textAlign: TextAlign.center,
                    ),
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
