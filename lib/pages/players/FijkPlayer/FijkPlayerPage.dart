import 'package:flutter/material.dart';
import 'package:flutter_player/pages/players/FijkPlayer/FijkPlayerWidget.dart';

class FijkPlayerPage extends StatefulWidget {
  final String videoUrl;
  const FijkPlayerPage({super.key, required this.videoUrl});

  @override
  State<FijkPlayerPage> createState() => _FijkPlayerPageState();
}

class _FijkPlayerPageState extends State<FijkPlayerPage> {
  bool playerIsVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("FijkPlayer"),
      ),
      body: Center(
        child: FijkPlayerWidget(
          videoUrl: widget.videoUrl,
        ),
      ),
    );
  }
}
