import 'package:flutter/material.dart';
import 'package:demo_app/presentation/screens/counter/counter_screen.dart';
import 'package:demo_app/presentation/screens/list_view/list_view._screen.dart';

class SecondPageButton extends StatefulWidget {
  const SecondPageButton({
    super.key,
  });

  @override
  State<SecondPageButton> createState() => _SecondPageButtonState();
}

class _SecondPageButtonState extends State<SecondPageButton> {
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: ((context) => const CounterScreen()),
              ),
            );
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.black45,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text(
              'Click',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: ((context) => const ListViewScreen()),
              ),
            );
          },
          icon: const Icon(Icons.all_inclusive_sharp),
        ),
        Switch(
          value: switchValue,
          onChanged: (value) {
            switchValue = value;
            setState(() {});
          },
        ),
      ],
    );
  }
}
