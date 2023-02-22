import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class About extends StatelessWidget {
  const About({super.key});

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
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 120,
            height: 190,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/about.jpg"))),
          ),
          const Center(
            child: Text(
              "MEDITO",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "ab",
                  color: Colors.blueGrey,
                  fontSize: 26.0),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "A free app to meditate. It has different categories to choose from. it includes various audios based on duration and also enivironments. The app also includes a daily video to watch which is recommeded.",
              style: TextStyle(fontSize: 17.5),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
