import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DiseasesRecord extends FirestoreRecord {
  DiseasesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "symptoms" field.
  List<String>? _symptoms;
  List<String> get symptoms => _symptoms ?? const [];
  bool hasSymptoms() => _symptoms != null;

  // "causes" field.
  String? _causes;
  String get causes => _causes ?? '';
  bool hasCauses() => _causes != null;

  // "treatments" field.
  List<String>? _treatments;
  List<String> get treatments => _treatments ?? const [];
  bool hasTreatments() => _treatments != null;

  // "prevention" field.
  String? _prevention;
  String get prevention => _prevention ?? '';
  bool hasPrevention() => _prevention != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "relatedPlants" field.
  List<String>? _relatedPlants;
  List<String> get relatedPlants => _relatedPlants ?? const [];
  bool hasRelatedPlants() => _relatedPlants != null;

  // "riskFactors" field.
  String? _riskFactors;
  String get riskFactors => _riskFactors ?? '';
  bool hasRiskFactors() => _riskFactors != null;

  // "complications" field.
  String? _complications;
  String get complications => _complications ?? '';
  bool hasComplications() => _complications != null;

  // "diagnosis" field.
  String? _diagnosis;
  String get diagnosis => _diagnosis ?? '';
  bool hasDiagnosis() => _diagnosis != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _symptoms = getDataList(snapshotData['symptoms']);
    _causes = snapshotData['causes'] as String?;
    _treatments = getDataList(snapshotData['treatments']);
    _prevention = snapshotData['prevention'] as String?;
    _image = snapshotData['image'] as String?;
    _relatedPlants = getDataList(snapshotData['relatedPlants']);
    _riskFactors = snapshotData['riskFactors'] as String?;
    _complications = snapshotData['complications'] as String?;
    _diagnosis = snapshotData['diagnosis'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Diseases');

  static Stream<DiseasesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DiseasesRecord.fromSnapshot(s));

  static Future<DiseasesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DiseasesRecord.fromSnapshot(s));

  static DiseasesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DiseasesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DiseasesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DiseasesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DiseasesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DiseasesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDiseasesRecordData({
  String? name,
  String? description,
  String? causes,
  String? prevention,
  String? image,
  String? riskFactors,
  String? complications,
  String? diagnosis,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'causes': causes,
      'prevention': prevention,
      'image': image,
      'riskFactors': riskFactors,
      'complications': complications,
      'diagnosis': diagnosis,
    }.withoutNulls,
  );

  return firestoreData;
}

class DiseasesRecordDocumentEquality implements Equality<DiseasesRecord> {
  const DiseasesRecordDocumentEquality();

  @override
  bool equals(DiseasesRecord? e1, DiseasesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        listEquality.equals(e1?.symptoms, e2?.symptoms) &&
        e1?.causes == e2?.causes &&
        listEquality.equals(e1?.treatments, e2?.treatments) &&
        e1?.prevention == e2?.prevention &&
        e1?.image == e2?.image &&
        listEquality.equals(e1?.relatedPlants, e2?.relatedPlants) &&
        e1?.riskFactors == e2?.riskFactors &&
        e1?.complications == e2?.complications &&
        e1?.diagnosis == e2?.diagnosis;
  }

  @override
  int hash(DiseasesRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.symptoms,
        e?.causes,
        e?.treatments,
        e?.prevention,
        e?.image,
        e?.relatedPlants,
        e?.riskFactors,
        e?.complications,
        e?.diagnosis
      ]);

  @override
  bool isValidKey(Object? o) => o is DiseasesRecord;
}
