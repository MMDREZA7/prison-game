import 'package:flutter/material.dart';

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
              height: 100,
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
            TextButton(
              onPressed: () {},
              style: _buttonstyle,
              child: Text(
                'Start Game',
                style: _textstyle,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Guide',
                style: _textstyle,
              ),
              style: _buttonstyle,
            ),
          ],
        ),
      ),
    );
  }
}
