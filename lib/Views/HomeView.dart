import 'dart:io';

import 'package:flutter/material.dart';
import 'package:presson_break/Levels/level_1.dart';
import 'package:presson_break/Views/guideView.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    //styles
    final _textstyle = const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    );

    final _buttonstyle = ButtonStyle(
      backgroundColor: MaterialStateProperty.all(
        Colors.blueGrey[900],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text('Prison Breck', style: _textstyle),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 200,
            ),
            const CircleAvatar(
              maxRadius: 50,
              minRadius: 50,
              backgroundColor: Colors.white,
              child: Image(
                image: AssetImage(
                  'images/Character_Look Center.jpg',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 140,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Level_1(),
                    ),
                  );
                },
                style: _buttonstyle,
                child: Text(
                  'Start Game',
                  style: _textstyle,
                ),
              ),
            ),
            SizedBox(
              width: 160,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GuideView(),
                    ),
                  );
                },
                style: _buttonstyle,
                child: Text(
                  'Guide',
                  style: _textstyle,
                ),
              ),
            ),
            SizedBox(
              width: 180,
              child: TextButton(
                onPressed: () {
                  exit(0);
                },
                style: _buttonstyle,
                child: Text(
                  'Exit The Game',
                  style: _textstyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
