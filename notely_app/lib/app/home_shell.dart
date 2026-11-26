import 'package:flutter/material.dart';
import 'package:notely_app/data/models/note.dart';

class HomeShell extends StatefulWidget {
  HomeShell({super.key});

  @override
  State<HomeShell> createState() => _HomeShellState();
}

class _HomeShellState extends State<HomeShell> {
  int _selectedIndex = 0;
  final List<Widget> _pages = const [
    Center(child: Text("Notes")),
    Center(child: Text("Cloud")),
    Center(child: Text("Settings")),
  ];

  final List<Note> _notes = [
    Note(
      id: '1',
      title: 'Groceries',
      body: 'Milk, eggs, bread',
      updatedAt: DateTime(2026, 11, 20),
      status: NoteStatus.local,
    ),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: _pages),

      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.web_stories_outlined),
            label: 'Notes',
          ),

          NavigationDestination(icon: Icon(Icons.cloud_done), label: "Cloud"),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
