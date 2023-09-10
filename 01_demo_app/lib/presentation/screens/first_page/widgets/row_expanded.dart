import 'package:flutter/material.dart';

class RowExpanded extends StatelessWidget {
  const RowExpanded({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Expanded(
          flex: 2,
          child: Text(
            'Praul Ayar - Freelancer for flutter',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.white,
            height: 20,
            // child: const Text('Row'),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 20,
          width: 20,
          color: Colors.blue,
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 20,
          width: 20,
          color: Colors.yellow,
        )
      ],
    );
  }
}
