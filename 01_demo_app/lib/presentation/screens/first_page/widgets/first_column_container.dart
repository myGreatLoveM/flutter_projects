import 'package:flutter/material.dart';

class FirstColumnContainer extends StatelessWidget {
  const FirstColumnContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Text('First Column Child'),
      ),
    );
  }
}
