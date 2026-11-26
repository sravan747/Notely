import 'package:flutter/material.dart';
import 'package:notely_app/data/models/note.dart';

class NotesScreen extends StatelessWidget {
  final List<Note> notes;

  const NotesScreen({super.key, required this.notes});

  static String statusLabel(Note note) {
    return note.status.name;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notes')),
      body: notes.isEmpty
          ? const Center(child: Text('No Notes yet'))
          : ListView.builder(
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
