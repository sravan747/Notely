import 'package:flutter/material.dart';
import 'package:notely_app/data/models/note.dart';

class NotesScreen extends StatelessWidget {
  final List<Note> notes;

  const NotesScreen({super.key, required this.notes});

  static String statusLabel(Note note) {
    switch (note.status) {
      case NoteStatus.local:
        return 'Local';
      case NoteStatus.uploading:
        return 'Uploading';
      case NoteStatus.uploaded:
        return 'Uploaded';
      case NoteStatus.changesPending:
        return 'Changes pending';
    }
  }
//

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notes')),
      body: notes.isEmpty
          ? const Center(child: Text('No notes yet'))
          : ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, index) {
                final note = notes[index];
                return ListTile(
                  title: Text(note.title),
                  subtitle: Text(statusLabel(note)),
                  onTap: () {},
                );
              },
            ),
    );
  }
}