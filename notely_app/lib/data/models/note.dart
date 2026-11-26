enum NoteStatus { local, uploading, uploaded, changesPending }

class Note {
  final String id;
  final String title;
  final String body;
  final DateTime updatedAt;
  final NoteStatus status;

  const Note({
    required this.id,
    required this.title,
    required this.body,
    required this.updatedAt,
    required this.status,
  });
}