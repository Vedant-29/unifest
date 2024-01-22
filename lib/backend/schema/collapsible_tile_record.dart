import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CollapsibleTileRecord extends FirestoreRecord {
  CollapsibleTileRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "collapsible_title" field.
  String? _collapsibleTitle;
  String get collapsibleTitle => _collapsibleTitle ?? '';
  bool hasCollapsibleTitle() => _collapsibleTitle != null;

  // "fest_name" field.
  String? _festName;
  String get festName => _festName ?? '';
  bool hasFestName() => _festName != null;

  // "reference_to" field.
  String? _referenceTo;
  String get referenceTo => _referenceTo ?? '';
  bool hasReferenceTo() => _referenceTo != null;

  void _initializeFields() {
    _collapsibleTitle = snapshotData['collapsible_title'] as String?;
    _festName = snapshotData['fest_name'] as String?;
    _referenceTo = snapshotData['reference_to'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Collapsible_tile');

  static Stream<CollapsibleTileRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CollapsibleTileRecord.fromSnapshot(s));

  static Future<CollapsibleTileRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CollapsibleTileRecord.fromSnapshot(s));

  static CollapsibleTileRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CollapsibleTileRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CollapsibleTileRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CollapsibleTileRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CollapsibleTileRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CollapsibleTileRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCollapsibleTileRecordData({
  String? collapsibleTitle,
  String? festName,
  String? referenceTo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'collapsible_title': collapsibleTitle,
      'fest_name': festName,
      'reference_to': referenceTo,
    }.withoutNulls,
  );

  return firestoreData;
}

class CollapsibleTileRecordDocumentEquality
    implements Equality<CollapsibleTileRecord> {
  const CollapsibleTileRecordDocumentEquality();

  @override
  bool equals(CollapsibleTileRecord? e1, CollapsibleTileRecord? e2) {
    return e1?.collapsibleTitle == e2?.collapsibleTitle &&
        e1?.festName == e2?.festName &&
        e1?.referenceTo == e2?.referenceTo;
  }

  @override
  int hash(CollapsibleTileRecord? e) => const ListEquality()
      .hash([e?.collapsibleTitle, e?.festName, e?.referenceTo]);

  @override
  bool isValidKey(Object? o) => o is CollapsibleTileRecord;
}
