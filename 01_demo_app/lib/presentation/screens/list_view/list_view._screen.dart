import 'package:flutter/material.dart';

import 'widgets/list_tile_item.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> example = ['example', 'list', 'with', 'strings'];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'List View',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        color: Theme.of(context).colorScheme.tertiaryContainer,
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemCount: example.length,
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 20,
            );
          },
          itemBuilder: ((context, index) {
            return ListTileItem(
              title: example[index],
              index: index,
            );
          }),
        ),
      ),
    );
  }
}
