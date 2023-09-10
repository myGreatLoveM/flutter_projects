import 'package:flutter/material.dart';

class MediaQueryContainer extends StatelessWidget {
  const MediaQueryContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      height: screenSize.height / 5,
      width: screenSize.width,
      color: Colors.amber,
      child: const Center(
        child: Text('Media Query'),
      ),
    );
  }
}
