import 'dart:ffi';

import 'package:flutter/material.dart';

import '../Lose and Win/Lose.dart';

class Level_2 extends StatelessWidget {
  const Level_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(40, 20, 40, 0),
            child: const Column(
              children: [
                Image(
                  width: 500,
                  image: AssetImage('images/Two Ways.jpg'),
                ),
                Text(
                  'Left or Right?',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '_________________________________________',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: const Column(
                  children: [
                    Text(
                      'Left Way',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Image(
                      width: 180,
                      height: 180,
                      image: AssetImage('images/Character_Look Left.jpg'),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Lose(),
                    ),
                  );
                },
                child: const Column(
                  children: [
                    Text(
                      'Right Way',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Image(
                      width: 180,
                      height: 180,
                      image: AssetImage('images/Character_Look Right.jpg'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
