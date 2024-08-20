import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlantsRecord extends FirestoreRecord {
  PlantsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "sciName" field.
  String? _sciName;
  String get sciName => _sciName ?? '';
  bool hasSciName() => _sciName != null;

  // "comName" field.
  String? _comName;
  String get comName => _comName ?? '';
  bool hasComName() => _comName != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "partsUsed" field.
  List<String>? _partsUsed;
  List<String> get partsUsed => _partsUsed ?? const [];
  bool hasPartsUsed() => _partsUsed != null;

  // "medProps" field.
  String? _medProps;
  String get medProps => _medProps ?? '';
  bool hasMedProps() => _medProps != null;

  // "tradUses" field.
  String? _tradUses;
  String get tradUses => _tradUses ?? '';
  bool hasTradUses() => _tradUses != null;

  // "prepDosage" field.
  String? _prepDosage;
  String get prepDosage => _prepDosage ?? '';
  bool hasPrepDosage() => _prepDosage != null;

  // "precautions" field.
  String? _precautions;
  String get precautions => _precautions ?? '';
  bool hasPrecautions() => _precautions != null;

  // "cultZones" field.
  String? _cultZones;
  String get cultZones => _cultZones ?? '';
  bool hasCultZones() => _cultZones != null;

  // "mainImage" field.
  String? _mainImage;
  String get mainImage => _mainImage ?? '';
  bool hasMainImage() => _mainImage != null;

  // "isLiked" field.
  bool? _isLiked;
  bool get isLiked => _isLiked ?? false;
  bool hasIsLiked() => _isLiked != null;

  void _initializeFields() {
    _sciName = snapshotData['sciName'] as String?;
    _comName = snapshotData['comName'] as String?;
    _description = snapshotData['description'] as String?;
    _partsUsed = getDataList(snapshotData['partsUsed']);
    _medProps = snapshotData['medProps'] as String?;
    _tradUses = snapshotData['tradUses'] as String?;
    _prepDosage = snapshotData['prepDosage'] as String?;
    _precautions = snapshotData['precautions'] as String?;
    _cultZones = snapshotData['cultZones'] as String?;
    _mainImage = snapshotData['mainImage'] as String?;
    _isLiked = snapshotData['isLiked'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('plants');

  static Stream<PlantsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PlantsRecord.fromSnapshot(s));

  static Future<PlantsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PlantsRecord.fromSnapshot(s));

  static PlantsRecord fromSnapshot(DocumentSnapshot snapshot) => PlantsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PlantsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PlantsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PlantsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PlantsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPlantsRecordData({
  String? sciName,
  String? comName,
  String? description,
  String? medProps,
  String? tradUses,
  String? prepDosage,
  String? precautions,
  String? cultZones,
  String? mainImage,
  bool? isLiked,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'sciName': sciName,
      'comName': comName,
      'description': description,
      'medProps': medProps,
      'tradUses': tradUses,
      'prepDosage': prepDosage,
      'precautions': precautions,
      'cultZones': cultZones,
      'mainImage': mainImage,
      'isLiked': isLiked,
    }.withoutNulls,
  );

  return firestoreData;
}

class PlantsRecordDocumentEquality implements Equality<PlantsRecord> {
  const PlantsRecordDocumentEquality();

  @override
  bool equals(PlantsRecord? e1, PlantsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.sciName == e2?.sciName &&
        e1?.comName == e2?.comName &&
        e1?.description == e2?.description &&
        listEquality.equals(e1?.partsUsed, e2?.partsUsed) &&
        e1?.medProps == e2?.medProps &&
        e1?.tradUses == e2?.tradUses &&
        e1?.prepDosage == e2?.prepDosage &&
        e1?.precautions == e2?.precautions &&
        e1?.cultZones == e2?.cultZones &&
        e1?.mainImage == e2?.mainImage &&
        e1?.isLiked == e2?.isLiked;
  }

  @override
  int hash(PlantsRecord? e) => const ListEquality().hash([
        e?.sciName,
        e?.comName,
        e?.description,
        e?.partsUsed,
        e?.medProps,
        e?.tradUses,
        e?.prepDosage,
        e?.precautions,
        e?.cultZones,
        e?.mainImage,
        e?.isLiked
      ]);

  @override
  bool isValidKey(Object? o) => o is PlantsRecord;
}
