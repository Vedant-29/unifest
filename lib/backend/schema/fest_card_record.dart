import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FestCardRecord extends FirestoreRecord {
  FestCardRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "fest_name" field.
  String? _festName;
  String get festName => _festName ?? '';
  bool hasFestName() => _festName != null;

  // "fest_img" field.
  String? _festImg;
  String get festImg => _festImg ?? '';
  bool hasFestImg() => _festImg != null;

  // "college_name" field.
  String? _collegeName;
  String get collegeName => _collegeName ?? '';
  bool hasCollegeName() => _collegeName != null;

  // "fest_location" field.
  String? _festLocation;
  String get festLocation => _festLocation ?? '';
  bool hasFestLocation() => _festLocation != null;

  // "workshop_count" field.
  int? _workshopCount;
  int get workshopCount => _workshopCount ?? 0;
  bool hasWorkshopCount() => _workshopCount != null;

  // "fest_description" field.
  String? _festDescription;
  String get festDescription => _festDescription ?? '';
  bool hasFestDescription() => _festDescription != null;

  // "city_name" field.
  String? _cityName;
  String get cityName => _cityName ?? '';
  bool hasCityName() => _cityName != null;

  // "state_name" field.
  String? _stateName;
  String get stateName => _stateName ?? '';
  bool hasStateName() => _stateName != null;

  // "fest_dates" field.
  String? _festDates;
  String get festDates => _festDates ?? '';
  bool hasFestDates() => _festDates != null;

  // "fest_url" field.
  String? _festUrl;
  String get festUrl => _festUrl ?? '';
  bool hasFestUrl() => _festUrl != null;

  void _initializeFields() {
    _festName = snapshotData['fest_name'] as String?;
    _festImg = snapshotData['fest_img'] as String?;
    _collegeName = snapshotData['college_name'] as String?;
    _festLocation = snapshotData['fest_location'] as String?;
    _workshopCount = castToType<int>(snapshotData['workshop_count']);
    _festDescription = snapshotData['fest_description'] as String?;
    _cityName = snapshotData['city_name'] as String?;
    _stateName = snapshotData['state_name'] as String?;
    _festDates = snapshotData['fest_dates'] as String?;
    _festUrl = snapshotData['fest_url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Fest_Card');

  static Stream<FestCardRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FestCardRecord.fromSnapshot(s));

  static Future<FestCardRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FestCardRecord.fromSnapshot(s));

  static FestCardRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FestCardRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FestCardRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FestCardRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FestCardRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FestCardRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFestCardRecordData({
  String? festName,
  String? festImg,
  String? collegeName,
  String? festLocation,
  int? workshopCount,
  String? festDescription,
  String? cityName,
  String? stateName,
  String? festDates,
  String? festUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fest_name': festName,
      'fest_img': festImg,
      'college_name': collegeName,
      'fest_location': festLocation,
      'workshop_count': workshopCount,
      'fest_description': festDescription,
      'city_name': cityName,
      'state_name': stateName,
      'fest_dates': festDates,
      'fest_url': festUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class FestCardRecordDocumentEquality implements Equality<FestCardRecord> {
  const FestCardRecordDocumentEquality();

  @override
  bool equals(FestCardRecord? e1, FestCardRecord? e2) {
    return e1?.festName == e2?.festName &&
        e1?.festImg == e2?.festImg &&
        e1?.collegeName == e2?.collegeName &&
        e1?.festLocation == e2?.festLocation &&
        e1?.workshopCount == e2?.workshopCount &&
        e1?.festDescription == e2?.festDescription &&
        e1?.cityName == e2?.cityName &&
        e1?.stateName == e2?.stateName &&
        e1?.festDates == e2?.festDates &&
        e1?.festUrl == e2?.festUrl;
  }

  @override
  int hash(FestCardRecord? e) => const ListEquality().hash([
        e?.festName,
        e?.festImg,
        e?.collegeName,
        e?.festLocation,
        e?.workshopCount,
        e?.festDescription,
        e?.cityName,
        e?.stateName,
        e?.festDates,
        e?.festUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is FestCardRecord;
}
