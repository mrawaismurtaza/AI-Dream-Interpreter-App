// ignore_for_file: unused_import, unused_local_variable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(FontAwesomeIcons.alignLeft),
          onPressed: () {},
        ),
      ),
      body: Expanded(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: Height * 0.05),
                width: Width * 0.8,
                height: Height * 0.15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [Color(0xFF2836CD), Colors.red],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      transform: Matrix4.translationValues(0, -Height * 0.07, 0),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          size: Width * 0.1,
                          FontAwesomeIcons.cloudMoon,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'SOMNO',
                        style: TextStyle(
                          fontSize: Width * Height * 0.00008,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: Width * 0.01,
                        ),
                      ),
                    ),
                    Container(
                      transform: Matrix4.translationValues(0, -Height * 0.07, 0),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          size: Width * 0.1,
                          FontAwesomeIcons.brain,
                          color: Color(0xFF2836CD),
                        ),
                      ),
                    ),
                  ],
                )),
            Expanded(
                // height: Height * 0.6,
                child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(top: Height * 0.07, left: Width * 0.1),
                  child: Text(
                    'Community Posts',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: Width * 0.04, vertical: Height * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: Height * 0.2,
                        width: Width * 0.3,
                        child: Image.asset(
                          'assets/Logo/Somno Logo Blue Shade Version.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: Width * 0.37,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(Height * 0.02),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Posted by Uzair',
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(Height * 0.02),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'This is a post about sleep and its importance in our lives.See more...',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.arrowRight,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(top: Height * 0.02, left: Width * 0.1),
                  child: Text(
                    'Community Posts',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
             )
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF2836CD),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Home'),
                            ),
                          );
                        },
                        icon: Icon(
                          FontAwesomeIcons.home,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.solidFaceSmileWink,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.circlePlus,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.userGroup,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.solidUser,
                          color: Colors.white,
                        ),
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
