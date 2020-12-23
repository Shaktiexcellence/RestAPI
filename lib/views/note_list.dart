import 'package:flutter/material.dart';
import 'package:restapi_flutter/models/note_for_listing.dart';

class NoteList extends StatelessWidget {
  final notes = [
    new NoteForListing(
        noteID: "1",
        createDateTime: DateTime.now(),
        latestEditDateTime: DateTime.now(),
        noteTitle: "Note 1"),
    new NoteForListing(
        noteID: "2",
        createDateTime: DateTime.now(),
        latestEditDateTime: DateTime.now(),
        noteTitle: "Note 2"),
    new NoteForListing(
        noteID: "3",
        createDateTime: DateTime.now(),
        latestEditDateTime: DateTime.now(),
        noteTitle: "Note 3"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List of nodes')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: ListView.separated(
        separatorBuilder: (_, __) => Divider(height: 1, color: Colors.green),
        itemBuilder: (_, int index) {
          return ListTile(
              title: Text(notes[index].noteTitle,
                  style: TextStyle(color: Theme.of(context).primaryColor)),
              subtitle:
                  Text('Last edited on ${(notes[index].latestEditDateTime)}'));
        },
        itemCount: notes.length,
      ),
    );
  }
}
