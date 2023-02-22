import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({super.key});

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
              "Help Center",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "ab",
                  color: Colors.blueGrey,
                  fontSize: 26.0),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const Center(
            child: Text(
              "What can we help you with? Here are the few ones",
              style: TextStyle(fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(Icons.numbers),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Is the app free?",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Yes, It's totally free to use.")
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(Icons.numbers),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Where can i find a guided meditation video?",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "Select the home icon on the navigaton bar and \nselect the play button that is placed right at the top.")
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(Icons.numbers),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Where can i listen audio?",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "Select the listen icon on the navigaton bar and there you \nwill find list of audios. you can also find short audios at\nthe bottom of home page")
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
