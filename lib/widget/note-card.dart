import 'package:flutter/material.dart';
import 'package:ppb_task1/model/note.dart';
import 'package:ppb_task1/widget/note-edit-form.dart';

class NoteCard extends StatelessWidget {
  final String title, note;
  final Function deleteNote;
  final Function(Note) editNote;

  const NoteCard({
    super.key,
    required this.title,
    required this.note,
    required this.deleteNote,
    required this.editNote,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(title), Text(note)],
            ),
          ),
          NoteEditForm(editNote: editNote, oldNote: Note(title: title, note: note)),
          IconButton(icon: Icon(Icons.delete), onPressed: () => deleteNote()),
        ],
      ),
      //
    );
  }
}
