// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(FontAwesomeIcons.alignLeft),
            onPressed: () {},
          ),
        ),
        body: Column(
          children: [
            Container(
              height: Height * 0.2,
              width: double.infinity,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Hello World',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              height: Height * 0.6,
              width: double.infinity,
              color: Colors.red,
              child: Center(
                child: Text(
                  'Hello World',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              height: Height * 0.086,
              decoration: BoxDecoration(
                color: Color(0xFF2836CD),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        FontAwesomeIcons.home,
                        color: Colors.white,
                      ),
                      Icon(
                        FontAwesomeIcons.solidFaceSmileWink,
                        color: Colors.white,
                      ),
                      Icon(
                        FontAwesomeIcons.circlePlus,
                        color: Colors.white,
                      ),
                      Icon(
                        FontAwesomeIcons.userGroup,
                        color: Colors.white,
                      ),
                      Icon(
                        FontAwesomeIcons.solidUser,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
