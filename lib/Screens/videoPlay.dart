import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class test2 extends StatelessWidget {
  const test2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.deepPurpleAccent,
        title: const Text("Welcome! Meditate Well!"),
        centerTitle: true,
      ),
      body: ListView(cacheExtent: 10000.0, children: <Widget>[
        ChewieListItem(
            controller: VideoPlayerController.asset("assets/audio/video.mp4"),
            looping: true),
      ]),
    );
  }
}

class ChewieListItem extends StatefulWidget {
  const ChewieListItem(
      {super.key, required this.controller, required this.looping});
  final VideoPlayerController controller;
  final bool looping;
  @override
  State<ChewieListItem> createState() => _ChewieListItemState();
}

class _ChewieListItemState extends State<ChewieListItem> {
  late ChewieController chewieController;

  @override
  void initState() {
    super.initState();

    chewieController = ChewieController(
      videoPlayerController: widget.controller,
      aspectRatio: 3 / 2,

      //prepare video
      autoInitialize: true,
      looping: widget.looping,

      //error handling
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Text(
            errorMessage,
            style: const TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Chewie(controller: chewieController),
    );
  }

  @override
  void dispose() {
    widget.controller.dispose();
    chewieController.dispose();
    super.dispose();
  }
}
