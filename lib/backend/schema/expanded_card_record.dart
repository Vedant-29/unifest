import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExpandedCardRecord extends FirestoreRecord {
  ExpandedCardRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "item_name" field.
  String? _itemName;
  String get itemName => _itemName ?? '';
  bool hasItemName() => _itemName != null;

  // "item_price" field.
  double? _itemPrice;
  double get itemPrice => _itemPrice ?? 0.0;
  bool hasItemPrice() => _itemPrice != null;

  // "item_description" field.
  String? _itemDescription;
  String get itemDescription => _itemDescription ?? '';
  bool hasItemDescription() => _itemDescription != null;

  // "item_img" field.
  String? _itemImg;
  String get itemImg => _itemImg ?? '';
  bool hasItemImg() => _itemImg != null;

  // "reference_to" field.
  String? _referenceTo;
  String get referenceTo => _referenceTo ?? '';
  bool hasReferenceTo() => _referenceTo != null;

  // "reference_to_FestName" field.
  String? _referenceToFestName;
  String get referenceToFestName => _referenceToFestName ?? '';
  bool hasReferenceToFestName() => _referenceToFestName != null;

  // "fest_url" field.
  String? _festUrl;
  String get festUrl => _festUrl ?? '';
  bool hasFestUrl() => _festUrl != null;

  void _initializeFields() {
    _itemName = snapshotData['item_name'] as String?;
    _itemPrice = castToType<double>(snapshotData['item_price']);
    _itemDescription = snapshotData['item_description'] as String?;
    _itemImg = snapshotData['item_img'] as String?;
    _referenceTo = snapshotData['reference_to'] as String?;
    _referenceToFestName = snapshotData['reference_to_FestName'] as String?;
    _festUrl = snapshotData['fest_url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Expanded_Card');

  static Stream<ExpandedCardRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ExpandedCardRecord.fromSnapshot(s));

  static Future<ExpandedCardRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ExpandedCardRecord.fromSnapshot(s));

  static ExpandedCardRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ExpandedCardRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ExpandedCardRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ExpandedCardRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ExpandedCardRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ExpandedCardRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createExpandedCardRecordData({
  String? itemName,
  double? itemPrice,
  String? itemDescription,
  String? itemImg,
  String? referenceTo,
  String? referenceToFestName,
  String? festUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'item_name': itemName,
      'item_price': itemPrice,
      'item_description': itemDescription,
      'item_img': itemImg,
      'reference_to': referenceTo,
      'reference_to_FestName': referenceToFestName,
      'fest_url': festUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class ExpandedCardRecordDocumentEquality
    implements Equality<ExpandedCardRecord> {
  const ExpandedCardRecordDocumentEquality();

  @override
  bool equals(ExpandedCardRecord? e1, ExpandedCardRecord? e2) {
    return e1?.itemName == e2?.itemName &&
        e1?.itemPrice == e2?.itemPrice &&
        e1?.itemDescription == e2?.itemDescription &&
        e1?.itemImg == e2?.itemImg &&
        e1?.referenceTo == e2?.referenceTo &&
        e1?.referenceToFestName == e2?.referenceToFestName &&
        e1?.festUrl == e2?.festUrl;
  }

  @override
  int hash(ExpandedCardRecord? e) => const ListEquality().hash([
        e?.itemName,
        e?.itemPrice,
        e?.itemDescription,
        e?.itemImg,
        e?.referenceTo,
        e?.referenceToFestName,
        e?.festUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is ExpandedCardRecord;
}
