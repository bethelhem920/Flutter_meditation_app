import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:workout_application/Screens/Shorts.dart';
import 'package:workout_application/Screens/videoPlay.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: ListView(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "WELCOME TO MEDITO",
                    style: TextStyle(
                        color: Colors.deepPurpleAccent,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: "ab"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "We hope you find peace and know more \nabout yourself",
                    style: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: const DecorationImage(
                    image: AssetImage("assets/image/pro.jpg"),
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(100),
                  ),
                  border:
                      Border.all(color: Colors.deepPurpleAccent, width: 1.0),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Recommended",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12),
                  ),
                  color: Colors.deepPurpleAccent.shade100,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "Daily 10 minutes meditation",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          FloatingActionButton.extended(
                            heroTag: null,
                            onPressed: () {
                              // SystemChrome.setPreferredOrientations([
                              //   DeviceOrientation.landscapeLeft,
                              // ]);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const test2()));
                            },
                            backgroundColor: Colors.white,
                            label: const Text(
                              "play",
                              style: TextStyle(
                                  color: Colors.deepPurpleAccent,
                                  fontWeight: FontWeight.w700),
                            ),
                            icon: Icon(
                              Icons.play_arrow,
                              color: Colors.deepPurpleAccent.shade100,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: Image.asset(
                          "assets/image/daily.png",
                        ))
                  ],
                ),
              )
            ],
          ),
          const Text(
            "Quote of the day",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              Container(
                height: 150,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/image/quote.jpg"),
                    fit: BoxFit.fitWidth,
                    opacity: 2.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.all(11.0),
                            child: Text(
                              '"To know yourself is to be confident. To be confident is to fearlessly express your potential."',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: Text(
                              "-Andy Puddicombe",
                              style: TextStyle(
                                  fontFamily: "ab",
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                    // Expanded(
                    //     child: Image.asset(
                    //   "assets/image/daily.png",
                    // ))
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Short Audios",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 170,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Listen(
                            Imagepath: 'assets/image/healing.png',
                            author: 'by Jennifer Brown',
                            quote:
                                '"We are healed of a suffering only by\n\t      experiencing it to the full."',
                            audiopath: "assets/audio/healing.mp3",
                          ),
                        ));
                  },
                  child: Container(
                    // height: 10,
                    width: 130,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 150, 114, 211),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          const Text(
                            "Healing",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Expanded(
                            child: Image.asset(
                                "assets/image/healing.png"), //////changes made
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Listen(
                            Imagepath: 'assets/image/mindfull.png',
                            author: '- by Sakyong Mipham',
                            quote:
                                '"The body benefits from movement, and \n     the mind benefits from stillness."',
                            audiopath: "assets/audio/mindfull.mp3",
                          ),
                        ));
                  },
                  child: Container(
                    // height: 10,
                    width: 130,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 173, 144, 224),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          const Text(
                            "Mindfull",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Expanded(
                            child: Image.asset("assets/image/mindfull.png"),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Listen(
                            Imagepath: 'assets/image/relax.png',
                            author: 'by -Mark Black',
                            quote:
                                '"Sometimes the most productive thing you can do is relax"',
                            audiopath: "assets/audio/relax.mp3",
                          ),
                        ));
                  },
                  child: Container(
                    // height: 10,
                    width: 130,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 206, 181, 249),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          const Text(
                            "Relaxing",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Expanded(
                            child: Image.asset("assets/image/relax.png"),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Listen(
                            Imagepath: 'assets/image/med.png',
                            author: 'By - David Lynch',
                            quote:
                                '“The thing about meditation is you\n  become more and more you.”',
                            audiopath: "assets/audio/med.mp3",
                          ),
                        ));
                  },
                  child: Container(
                    // height: 10,
                    width: 130,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 224, 206, 255),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          const Text(
                            "Meditation",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Expanded(
                            child: Image.asset("assets/image/med.png"),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _ontap(int index) {
    setState(() {
      _selectedindex = index;
    });
  }
}
