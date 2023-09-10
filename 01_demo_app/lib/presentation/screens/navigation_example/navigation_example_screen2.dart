
import 'package:flutter/material.dart';

class NavigationExampleScreen2 extends StatelessWidget {
  const NavigationExampleScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Screen 2',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: TextButton(
          child: const Text('Go to screen 1'),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/screenOne');
          },
        ),
      ),
    );
  }
}
