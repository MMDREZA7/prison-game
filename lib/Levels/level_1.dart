import 'package:flutter/material.dart';
import 'package:presson_break/Levels/level_2.dart';
import 'package:presson_break/Lose%20and%20Win/Lose.dart';

class Level_1 extends StatelessWidget {
  Level_1({super.key});

  final textstyle = const TextStyle(
      fontWeight: FontWeight.bold, color: Colors.white, fontSize: 26);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 0, right: 50, left: 50),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Image(
                  width: 200,
                  image: AssetImage('images/Charatre in room of prison.jpg'),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Which you one Choose?',
                  style: textstyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '________________________________________',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              SizedBox(
                width: 200,
                height: 200,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Lose(),
                      ),
                    );
                  },
                  child: const Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Break From Salon',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Image(
                        image: AssetImage('images/Salon of prison.jpg'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 150,
                height: 200,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Level_2(),
                      ),
                    );
                  },
                  child: const Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Brack From Way',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        child: Image(
                          height: 130,
                          image: AssetImage(
                            'images/Two Ways.jpg',
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
