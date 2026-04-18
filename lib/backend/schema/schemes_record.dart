import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SchemesRecord extends FirestoreRecord {
  SchemesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "apply_link" field.
  String? _applyLink;
  String get applyLink => _applyLink ?? '';
  bool hasApplyLink() => _applyLink != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  void _initializeFields() {
    _description = snapshotData['description'] as String?;
    _applyLink = snapshotData['apply_link'] as String?;
    _category = snapshotData['category'] as String?;
    _image = snapshotData['image'] as String?;
    _title = snapshotData['title'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('schemes');

  static Stream<SchemesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SchemesRecord.fromSnapshot(s));

  static Future<SchemesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SchemesRecord.fromSnapshot(s));

  static SchemesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SchemesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SchemesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SchemesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SchemesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SchemesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSchemesRecordData({
  String? description,
  String? applyLink,
  String? category,
  String? image,
  String? title,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'description': description,
      'apply_link': applyLink,
      'category': category,
      'image': image,
      'title': title,
    }.withoutNulls,
  );

  return firestoreData;
}

class SchemesRecordDocumentEquality implements Equality<SchemesRecord> {
  const SchemesRecordDocumentEquality();

  @override
  bool equals(SchemesRecord? e1, SchemesRecord? e2) {
    return e1?.description == e2?.description &&
        e1?.applyLink == e2?.applyLink &&
        e1?.category == e2?.category &&
        e1?.image == e2?.image &&
        e1?.title == e2?.title;
  }

  @override
  int hash(SchemesRecord? e) => const ListEquality()
      .hash([e?.description, e?.applyLink, e?.category, e?.image, e?.title]);

  @override
  bool isValidKey(Object? o) => o is SchemesRecord;
}
