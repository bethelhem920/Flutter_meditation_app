import 'package:flutter/material.dart';
import 'Shorts.dart';

class Catagories extends StatelessWidget {
  const Catagories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Catagories",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
            onPressed: (() {
              Navigator.pushNamed(context, "home");
            }),
            icon: const Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        foregroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
          child: GridView.extent(
        primary: false,
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        maxCrossAxisExtent: 200.0,
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Listen(
                      Imagepath: 'assets/image/stli.png',
                      author: 'by -Mark Black',
                      quote:
                          '“Striving for success without hard work is like trying to \n \t \t                harvest where you haven’t planted.” ',
                      audiopath: "assets/audio/Study.mp3",
                    ),
                  ));
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/image/study.jpg"),
                      fit: BoxFit.fill)),
              //color: Color.fromARGB(255, 185, 133, 190),
              child: const Text(
                'Study',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Listen(
                      Imagepath: 'assets/image/relax.png',
                      author: 'by -Andy Warhol',
                      quote:
                          '"If you wish to know the divine, feel the wind\n            on your face and the warm sun on your hand.”',
                      audiopath: "assets/audio/Nature.mp3",
                    ),
                  ));
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/image/nature.jpg"),
                      fit: BoxFit.fill)),
              //color: Color.fromARGB(255, 185, 133, 190),
              child: const Text('Nature',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Listen(
                      Imagepath: 'assets/image/relax.png',
                      author: 'by Alain de Botton',
                      quote:
                          '“Insomnia is a glamorous term for thoughts you forgot to have in the day.”',
                      audiopath: "assets/audio/sleep.mp3",
                    ),
                  ));
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/image/sleep.jpg"),
                      fit: BoxFit.fill)),
              // color: Color.fromARGB(255, 185, 133, 190),
              child: const Text('sleep',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Listen(
                      Imagepath: 'assets/image/relax.png',
                      author: 'by - LL Cool J',
                      quote:
                          '“Stay focused, go after your dreams and keep moving toward your goals.”',
                      audiopath: "assets/audio/foucs.mp3",
                    ),
                  ));
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/image/foucs.jpg"),
                      fit: BoxFit.fill)),
              //color: Color.fromARGB(255, 185, 133, 190),
              child: const Text('Foucs',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
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
                          '"It is a good idea to always do something relaxing prior to \n         making an important decision in your life."',
                      audiopath: "assets/audio/relaxl.mp3",
                    ),
                  ));
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/image/relax.jpg"),
                      fit: BoxFit.fill)),
              //color: Color.fromARGB(255, 185, 133, 190),
              child: const Text('Relax',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Listen(
                      Imagepath: 'assets/image/relax.png',
                      author: 'by -The Bhagavad Gita',
                      quote:
                          ' "Yoga is the journey of the self, through the self, to the self."',
                      audiopath: "assets/audio/Yoga.mp3",
                    ),
                  ));
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/image/yoga.jpg"),
                      fit: BoxFit.fill)),
              //color: Color.fromARGB(255, 185, 133, 190),
              child: const Text('Yoga',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
          ),
        ],
      )),
    );
  }
}

class metadata {
  final String imagepath;
  final String text;

  metadata(this.imagepath, this.text);
}
