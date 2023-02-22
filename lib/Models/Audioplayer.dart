import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rxdart/rxdart.dart';

class Audio extends StatefulWidget {
  const Audio({super.key, required this.audiopath});
  final String audiopath;

  @override
  // ignore: no_logic_in_create_state
  State<Audio> createState() => _AudioState(audiopath);
}

class _AudioState extends State<Audio> {
  late AudioPlayer audio;
  final String audiopath;

  _AudioState(this.audiopath);

  Stream<Progress> get _progessStream =>
      Rx.combineLatest3<Duration, Duration, Duration?, Progress>(
        audio.positionStream,
        audio.bufferedPositionStream,
        audio.durationStream,
        ((position, bufferedPosition, duration) =>
            Progress(position, bufferedPosition, duration ?? Duration.zero)),
      );

  @override
  void initState() {
    audio = AudioPlayer();
    super.initState();
    audio.setAsset(audiopath);
  }

  @override
  void dispose() {
    audio.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        StreamBuilder<Progress>(
          stream: _progessStream,
          builder: ((context, snapshot) {
            final positiondata = snapshot.data;
            return ProgressBar(
              barHeight: 8,
              baseBarColor: Colors.black,
              bufferedBarColor: Colors.grey,
              progress: positiondata?.position ?? Duration.zero,
              total: positiondata?.duration ?? Duration.zero,
              buffered: positiondata?.bufferedPosition ?? Duration.zero,
              onSeek: audio.seek,
            );
          }),
        ),
        const SizedBox(
          height: 15,
        ),
        playControl(audio: audio),
      ],
    );
  }
}

class playControl extends StatelessWidget {
  const playControl({super.key, required this.audio});
  final AudioPlayer audio;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<PlayerState>(
      stream: audio.playerStateStream,
      builder: (context, snapshot) {
        final playerstate = snapshot.data;
        final processingstate = playerstate?.processingState;
        final playing = playerstate?.playing;

        if (!(playing ?? false)) {
          return IconButton(
            onPressed: audio.play,
            icon: const Icon(Icons.play_arrow_rounded),
            color: Color.fromARGB(255, 0, 0, 0),
            iconSize: 80,
          );
        } else if (processingstate != ProcessingState.completed) {
          return IconButton(
            onPressed: audio.pause,
            icon: const Icon(Icons.pause_rounded),
            color: Color.fromARGB(255, 0, 0, 0),
            iconSize: 80,
          );
        }
        return const Icon(
          Icons.play_arrow_rounded,
          size: 80,
          color: Color.fromARGB(255, 0, 0, 0),
        );
      },
    );
  }
}

class Progress {
  const Progress(
    this.position,
    this.bufferedPosition,
    this.duration,
  );
  final Duration position;
  final Duration bufferedPosition;
  final Duration duration;
}

class MediaMetaData {
  final String image;
  final String quote;
  final String artist;

  MediaMetaData(this.image, this.quote, this.artist);
}
