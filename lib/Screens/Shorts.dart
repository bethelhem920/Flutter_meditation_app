import 'package:audio_wave/audio_wave.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:workout_application/Models/Audioplayer.dart';

class Listen extends StatefulWidget {
  final String audiopath;

  const Listen(
      {super.key,
      required this.Imagepath,
      required this.quote,
      required this.author,
      required this.audiopath});

  final String Imagepath;
  final String quote;
  final String author;
  //final String audiopath;
  @override
  // ignore: no_logic_in_create_state
  State<Listen> createState() =>
      _ListenState(Imagepath, quote, author, audiopath);
}

class _ListenState extends State<Listen> with SingleTickerProviderStateMixin {
  // ignore: non_constant_identifier_names
  final String Imagepath;
  final String quote;
  final String author;
  final String audiopath;
  late AnimationController controller;
  late Animation<double> animation;
  _ListenState(this.Imagepath, this.quote, this.author, this.audiopath);

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 7));
    controller.repeat();

    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: [
          RotationTransition(
            turns: animation,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
              child: Image.asset(
                Imagepath,
                width: 100,
                height: 300,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            height: 22,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                quote,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                author,
                style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    fontFamily: "ab"),
              ),
            ],
          ),
          // const SizedBox(
          //   height: 30,
          // ),
          Center(
            child: AudioWave(
              alignment: 'center',
              height: 80,
              // width: 100,
              spacing: 4,
              bars: [
                AudioWaveBar(
                    heightFactor: 0.2,
                    color: Color.fromARGB(255, 255, 210, 74)),
                AudioWaveBar(
                    heightFactor: 0.3,
                    color: const Color.fromARGB(255, 255, 210, 74)),
                AudioWaveBar(
                    heightFactor: 0.7,
                    color: const Color.fromARGB(255, 255, 210, 74)),
                AudioWaveBar(heightFactor: 0.8, color: Colors.black),
                AudioWaveBar(
                    heightFactor: 0.2,
                    color: const Color.fromARGB(255, 255, 210, 74)),
                AudioWaveBar(
                    heightFactor: 0.1,
                    color: const Color.fromARGB(255, 255, 210, 74)),
                AudioWaveBar(
                    heightFactor: 0.3,
                    color: const Color.fromARGB(255, 255, 210, 74)),
                AudioWaveBar(heightFactor: 0.7, color: Colors.black),
                AudioWaveBar(
                    heightFactor: 0.40,
                    color: const Color.fromARGB(255, 255, 210, 74)),
                AudioWaveBar(
                    heightFactor: 0.20,
                    color: Color.fromARGB(255, 255, 210, 74)),
                AudioWaveBar(
                    heightFactor: 0.10,
                    color: const Color.fromARGB(255, 255, 210, 74)),
                AudioWaveBar(
                    heightFactor: 0.30, color: Color.fromARGB(255, 0, 0, 0)),
                AudioWaveBar(
                    heightFactor: 0.70,
                    color: Color.fromARGB(255, 255, 210, 74)),
                AudioWaveBar(
                    heightFactor: 0.40,
                    color: const Color.fromARGB(255, 255, 210, 74)),
                AudioWaveBar(
                    heightFactor: 0.20,
                    color: const Color.fromARGB(255, 255, 210, 74)),
                AudioWaveBar(
                    heightFactor: 0.10, color: Color.fromARGB(255, 0, 0, 0)),
                AudioWaveBar(
                    heightFactor: 0.30,
                    color: Color.fromARGB(255, 255, 210, 74)),
                AudioWaveBar(
                    heightFactor: 0.70,
                    color: const Color.fromARGB(255, 255, 210, 74)),
                AudioWaveBar(
                    heightFactor: 0.40,
                    color: const Color.fromARGB(255, 255, 210, 74)),
                AudioWaveBar(
                    heightFactor: 0.20, color: Color.fromARGB(255, 0, 0, 0)),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Audio(
              audiopath: audiopath,
            ),
          ),
        ],
      ),
    );
  }
}
