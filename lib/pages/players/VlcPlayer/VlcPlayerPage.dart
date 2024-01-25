import 'package:flutter/material.dart';
import 'package:flutter_player/pages/players/VlcPlayer/VlcPlayerWidget.dart';

class VlcPlayerPage extends StatefulWidget {
  final String videoUrl;
  const VlcPlayerPage({super.key, required this.videoUrl});

  @override
  State<VlcPlayerPage> createState() => _VlcPlayerPageState();
}

class _VlcPlayerPageState extends State<VlcPlayerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vlc Player"),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: VlcPlayerWidget(
          videoUrl: widget.videoUrl,
        ),
      ),
    );
  }
}
