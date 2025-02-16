// ignore_for_file: unused_import, unused_local_variable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:somno/features/components/NavigationDrawer.dart';

class PageFirst extends StatefulWidget {
  const PageFirst({super.key});

  @override
  State<PageFirst> createState() => _PageFirstState();
}

class _PageFirstState extends State<PageFirst> {
  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;

    return Scaffold(
      drawer: const CustomNavigationDrawer(),
      body: SingleChildScrollView(
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
                      transform:
                          Matrix4.translationValues(0, -Height * 0.07, 0),
                      child: Icon(
                        size: 50,
                        FontAwesomeIcons.cloudMoon,
                        color: Colors.red,
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
                      transform:
                          Matrix4.translationValues(0, -Height * 0.07, 0),
                      child: Icon(
                        size: 50,
                        FontAwesomeIcons.brain,
                        color: Color(0xFF2836CD),
                      ),
                    ),
                  ],
                )),
            Container(
                child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding:
                      EdgeInsets.only(top: Height * 0.03, left: Width * 0.1),
                  child: Text(
                    'Community Posts',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: Width * 0.1, vertical: Height * 0.02),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: communityPosts(Height, Width),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: Width * 0.1),
                  child: Text(
                    'History',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                historySearch(Height, Width),
              ],
            )),
          ],
        ),
      ),
    );
  }

  Container historySearch(double Height, double Width) {
    return Container(
      margin: EdgeInsets.only(top: Height * 0.02),
      width: Width * 0.8,
      height: Height * 0.18,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFF2836CD),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Icon(
              size: 70,
              FontAwesomeIcons.brain,
              color: Colors.white,
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    'Dreams History',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: Height * 0.02),
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(FontAwesomeIcons.search,
                            size: 15, color: Colors.red),
                        SizedBox(
                          width: Width * 0.04,
                        ),
                        Text(
                          'Search Here',
                          style: TextStyle(
                            color: Color(0xFF2836CD),
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container communityPosts(double Height, double Width) {
    return Container(
      height: Height * 0.2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, positon) {
          return Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/Logo/Somno Logo Blue Shade Version (2).png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  height: Height * 0.2,
                  width: Width * 0.3,
                ),
                Container(
                  width: Width * 0.3,
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Posted by Uzair',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          'This is a post about sleep and its importance in our lives.See more...',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
