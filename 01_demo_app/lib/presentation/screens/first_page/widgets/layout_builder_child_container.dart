import 'package:flutter/material.dart';

class LayoutBuilderChildContainer extends StatelessWidget {
  const LayoutBuilderChildContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      color: Colors.deepPurpleAccent,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Center(
            child: Container(
              height: constraints.maxHeight / 2,
              width: constraints.maxWidth * 0.8,
              color: Colors.lime,
              child: const Center(
                child: Text('Layout Builder Example'),
              ),
            ),
          );
        },
      ),
    );
  }
}
