import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';

class NoteView extends StatelessWidget {
  const NoteView(
      {super.key,
      required this.viewNote,
      required this.onNoteDeleted, required this.index,
      });

  final Note viewNote;
  final int index;
  final Function(int) onNoteDeleted;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Note View'),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Delete this ?'),
                    content: Text('Note ${viewNote.title} will be deleted!'),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            onNoteDeleted(index);
                            Navigator.of(context).pop();
                          },
                          child: const Text('DELETE')),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('CANCEL')),
                    ],
                  );
                },
              );
            },
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              viewNote.title,
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              viewNote.body,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
