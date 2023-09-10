import 'package:flutter/material.dart';

class BottomNavigationBarExample extends StatelessWidget {
  const BottomNavigationBarExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown,
      height: 40,
      child: const Center(
        child: Text(
          'Flutter Navigation Bar',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
