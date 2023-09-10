import 'package:flutter/material.dart';

class ListTileItem extends StatefulWidget {
  final String title;
  final int index;
  const ListTileItem({super.key, required this.title, required this.index});

  @override
  State<ListTileItem> createState() => _ListTileItemState();
}

class _ListTileItemState extends State<ListTileItem> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(5),
      ),
      child: ListTile(
        title: Text(widget.title),
        leading: Checkbox(
          value: _isSelected,
          onChanged: (value) {
            _isSelected = value ?? false;
            setState(() {
            });
          },
        ),
        subtitle: Text('item number ${widget.index}'),
        titleAlignment: ListTileTitleAlignment.center,
      ),
    );
  }
}
