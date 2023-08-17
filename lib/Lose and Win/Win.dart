import 'package:flutter/material.dart';

import '../Views/HomeView.dart';

class Win extends StatelessWidget {
  const Win({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[900],
      body: Column(
        children: [
          const SizedBox(
            height: 250,
          ),
          const Center(
            child: Text(
              'You Win',
              style: TextStyle(
                fontSize: 50,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 300,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeView(),
                ),
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Colors.blueGrey[500],
              ),
            ),
            child: const Text(
              'Main Menu',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
