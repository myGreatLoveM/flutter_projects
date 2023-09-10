import 'package:flutter/material.dart';

class StackImageAssetCaption extends StatelessWidget {
  const StackImageAssetCaption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 150,
          width: 150,
          child: Image.asset(
            'assets/flower.jpg',
            fit: BoxFit.cover,
          ),
        ),
        const Positioned(
          left: 80,
          top: 120,
          child: Text(
            'Flower',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
