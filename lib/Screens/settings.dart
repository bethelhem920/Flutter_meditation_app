import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:workout_application/Screens/Dashboard.dart';

import '../Models/Itemcardsett.dart';

class setting extends StatelessWidget {
  const setting({super.key});
  Widget _arrow() {
    return const Icon(
      Icons.arrow_forward_ios,
      size: 20.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        foregroundColor: Colors.deepPurpleAccent,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (() {
            Navigator.pushNamed(context, "home");
          }),
        ),
      ),
      body: Container(
        color: (brightness == Brightness.light)
            ? Color(0xFFF7F7F7)
            : Color(0xFF000000),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                color: (brightness == Brightness.light)
                    ? Color(0xFFF7F7F7)
                    : Color(0xFF000000),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(left: 16),
                      child: const Text(
                        'App Settings',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF999999)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ItemCard(
                      title: 'Language',
                      color: (brightness == Brightness.light)
                          ? Colors.white
                          : Theme.of(context).scaffoldBackgroundColor,
                      rightWidget: const Center(
                        child: Text('Coming soon',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            )),
                      ),
                      callback: () {
                        print('Tap Settings Item 01');
                      },
                      textColor: Colors.black,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 16),
                      child: const Text(
                        'Others',
                        style: TextStyle(
                            fontFamily: 'NotoSansJP',
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF999999)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ItemCard(
                      title: 'About',
                      color: (brightness == Brightness.light)
                          ? Colors.white
                          : Theme.of(context).scaffoldBackgroundColor,
                      rightWidget: IconButton(
                          onPressed: (() {
                            Navigator.pushNamed(context, "about");
                          }),
                          icon: _arrow()),
                      callback: () {
                        print('Tap Settings Item 02');
                      },
                      textColor: Colors.black,
                    ),
                    ItemCard(
                      title: 'Help Center',
                      color: (brightness == Brightness.light)
                          ? Colors.white
                          : Theme.of(context).scaffoldBackgroundColor,
                      rightWidget: IconButton(
                          onPressed: (() {
                            Navigator.pushNamed(context, "help");
                          }),
                          icon: _arrow()),
                      callback: () {
                        print('Tap Settings Item 03');
                      },
                      textColor: Colors.black,
                    ),
                    ItemCard(
                      title: 'Rate App',
                      color: (brightness == Brightness.light)
                          ? Colors.white
                          : Theme.of(context).scaffoldBackgroundColor,
                      rightWidget: const Center(
                        child: Text('Coming soon',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            )),
                      ),
                      callback: () {
                        print('Tap Settings Item 04');
                      },
                      textColor: Colors.black,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    ItemCard(
                      title: 'version',
                      color: (brightness == Brightness.light)
                          ? Colors.white
                          : Theme.of(context).scaffoldBackgroundColor,
                      rightWidget: const Center(
                        child: Text('1.0.0',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            )),
                      ),
                      callback: () {},
                      textColor: Colors.black,
                    ),
                    const SizedBox(
                      height: 200,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
