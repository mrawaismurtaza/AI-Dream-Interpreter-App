import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CommunityPosts extends StatelessWidget {
  const CommunityPosts({super.key});

  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(FontAwesomeIcons.user),
          onPressed: () {},
        ),
      ),
      body: Column(
        children: [
          
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, position) {
                return Card(
                  margin: EdgeInsets.symmetric(
                      horizontal: Width * 0.1, vertical: Height * 0.03),
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        width: Width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          'assets/Logo/Somno Logo Blue Shade Version.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(13),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Posted by Uzair',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(13),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'This is a post about sleep and its importance in our lives.This is a post about sleep and its importance in our lives.',
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
