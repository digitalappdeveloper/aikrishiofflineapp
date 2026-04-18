import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatsRecord extends FirestoreRecord {
  ChatsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  bool hasText() => _text != null;

  // "sender" field.
  String? _sender;
  String get sender => _sender ?? '';
  bool hasSender() => _sender != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "chat_session" field.
  DocumentReference? _chatSession;
  DocumentReference? get chatSession => _chatSession;
  bool hasChatSession() => _chatSession != null;

  // "created_by" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  bool hasCreatedBy() => _createdBy != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  void _initializeFields() {
    _text = snapshotData['text'] as String?;
    _sender = snapshotData['sender'] as String?;
    _time = snapshotData['time'] as DateTime?;
    _chatSession = snapshotData['chat_session'] as DocumentReference?;
    _createdBy = snapshotData['created_by'] as String?;
    _message = snapshotData['message'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chats');

  static Stream<ChatsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatsRecord.fromSnapshot(s));

  static Future<ChatsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatsRecord.fromSnapshot(s));

  static ChatsRecord fromSnapshot(DocumentSnapshot snapshot) => ChatsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatsRecordData({
  String? text,
  String? sender,
  DateTime? time,
  DocumentReference? chatSession,
  String? createdBy,
  String? message,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'text': text,
      'sender': sender,
      'time': time,
      'chat_session': chatSession,
      'created_by': createdBy,
      'message': message,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatsRecordDocumentEquality implements Equality<ChatsRecord> {
  const ChatsRecordDocumentEquality();

  @override
  bool equals(ChatsRecord? e1, ChatsRecord? e2) {
    return e1?.text == e2?.text &&
        e1?.sender == e2?.sender &&
        e1?.time == e2?.time &&
        e1?.chatSession == e2?.chatSession &&
        e1?.createdBy == e2?.createdBy &&
        e1?.message == e2?.message;
  }

  @override
  int hash(ChatsRecord? e) => const ListEquality().hash(
      [e?.text, e?.sender, e?.time, e?.chatSession, e?.createdBy, e?.message]);

  @override
  bool isValidKey(Object? o) => o is ChatsRecord;
}
