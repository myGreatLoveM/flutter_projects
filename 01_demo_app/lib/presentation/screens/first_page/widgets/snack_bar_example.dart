import 'package:flutter/material.dart';

class SnackBarExample extends StatelessWidget {
  const SnackBarExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      // backgroundColor: Colors.grey,
      child: const Icon(
        Icons.ac_unit,
        // color: Colors.black,
      ),
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Heyy Look here !!',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                // color: Colors.green,
              ),
            ),
            // backgroundColor: Colors.black,
            duration: Duration(seconds: 3),
            width: 250,
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
          ),
        );
      },
    );
  }
}
