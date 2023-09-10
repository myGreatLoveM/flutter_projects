import 'package:flutter/material.dart';

class SecondColumnContainer extends StatelessWidget {
  const SecondColumnContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(
        child: Text('Second Column Child'),
      ),
    );
  }
}
