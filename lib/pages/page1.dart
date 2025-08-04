import 'package:flutter/material.dart';

import '../add.dart';

// The class for the Userhome widget.
class Userhome extends StatelessWidget {
  const Userhome({super.key});

  // The build method is correctly placed inside the class.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(20),
          ),
          child: const Text('add', style: TextStyle(fontSize: 20)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddPage()),
            );
          },
        ),
      ),
    );
  }
}

