import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:somno/features/components/NavigationDrawer.dart';
import 'package:somno/features/pages/page-1.dart';
import 'package:somno/features/pages/page-2.dart';
import 'package:somno/features/pages/page-3.dart';
import 'package:somno/features/pages/page-4.dart';
import 'package:somno/features/pages/page-5.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _pageIndex = 0;

  final _pages = [
    const PageFirst(),
    PageTwo(),
    const PageThird(),
    const PageFourth(),
    const PageFifth(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(FontAwesomeIcons.alignLeft),
            onPressed: () {
              Scaffold.of(context)
                  .openDrawer(); // Open the drawer programmatically
            },
          ),
        ),
      ),
      
      drawer: CustomNavigationDrawer(),
      body: _pages[_pageIndex],
      bottomNavigationBar: buildNavBar(context,),
    );
  }

  Container buildNavBar(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;

    return Container(
      height: Height * 0.08,
      decoration: BoxDecoration(
        color: Color(0xFF2836CD),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                _pageIndex = 0;
              });
            },
            icon: _pageIndex == 0
                ? Icon(
                    FontAwesomeIcons.home,
                    color: Colors.white,
                    size: 38,
                  )
                : Icon(
                    FontAwesomeIcons.home,
                    color: Colors.white,
                  ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _pageIndex = 1;
              });
            },
            icon: _pageIndex == 1
                ? Icon(
                    FontAwesomeIcons.search,
                    color: Colors.white,
                    size: 38,
                  )
                : Icon(
                    FontAwesomeIcons.search,
                    color: Colors.white,
                  ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _pageIndex = 2;
              });
            },
            icon: _pageIndex == 2
                ? Icon(
                    FontAwesomeIcons.circlePlus,
                    color: Colors.white,
                    size: 38,
                  )
                : Icon(
                    FontAwesomeIcons.plus,
                    color: Colors.white,
                  ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _pageIndex = 3;
              });
            },
            icon: _pageIndex == 3
                ? Icon(
                    FontAwesomeIcons.solidHeart,
                    color: Colors.white,
                    size: 38,
                  )
                : Icon(
                    FontAwesomeIcons.heart,
                    color: Colors.white,
                  ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _pageIndex = 4;
              });
            },
            icon: _pageIndex == 4
                ? Icon(
                  FontAwesomeIcons.solidUser,
                  color: Colors.white,
                  size: 38,
                )
                : Icon(
                  FontAwesomeIcons.user,
                  color: Colors.white,
                ),
          ),
        ],
      ),
    );
  }
}

