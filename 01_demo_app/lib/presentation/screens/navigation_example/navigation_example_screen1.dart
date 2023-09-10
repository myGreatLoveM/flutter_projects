import 'package:flutter/material.dart';

class NavigationExampleScreen1 extends StatelessWidget {
  const NavigationExampleScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Screen 1',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: TextButton(
          child: const Text('Go Back'),
          onPressed: () {
            Navigator.popUntil(context, (route) => route.isFirst);
            // Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
