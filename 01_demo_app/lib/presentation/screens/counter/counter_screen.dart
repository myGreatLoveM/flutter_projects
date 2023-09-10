import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: Container(
        color: Theme.of(context).colorScheme.tertiaryContainer,
        child: Center(
          child: Text(
            'Count : $_counter',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: _counter > 0 ? Colors.orange : Colors.black,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              heroTag: 'btn1',
              onPressed: () {
                if (_counter > 0) {
                  _counter -= 1;
                  setState(() {});
                }
              },
              backgroundColor: Colors.green,
              child: const Icon(Icons.remove),
            ),
            FloatingActionButton(
              heroTag: 'btn2',
              onPressed: () {
                setState(() {
                  _counter += 1;
                });
              },
              backgroundColor: Colors.orange,
              child: const Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
