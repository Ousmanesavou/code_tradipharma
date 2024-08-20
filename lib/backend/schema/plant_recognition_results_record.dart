import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlantRecognitionResultsRecord extends FirestoreRecord {
  PlantRecognitionResultsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "imageID" field.
  DocumentReference? _imageID;
  DocumentReference? get imageID => _imageID;
  bool hasImageID() => _imageID != null;

  // "plantID" field.
  DocumentReference? _plantID;
  DocumentReference? get plantID => _plantID;
  bool hasPlantID() => _plantID != null;

  // "recognitionTime" field.
  DateTime? _recognitionTime;
  DateTime? get recognitionTime => _recognitionTime;
  bool hasRecognitionTime() => _recognitionTime != null;

  // "imageURL" field.
  String? _imageURL;
  String get imageURL => _imageURL ?? '';
  bool hasImageURL() => _imageURL != null;

  // "confidenceScore" field.
  String? _confidenceScore;
  String get confidenceScore => _confidenceScore ?? '';
  bool hasConfidenceScore() => _confidenceScore != null;

  void _initializeFields() {
    _imageID = snapshotData['imageID'] as DocumentReference?;
    _plantID = snapshotData['plantID'] as DocumentReference?;
    _recognitionTime = snapshotData['recognitionTime'] as DateTime?;
    _imageURL = snapshotData['imageURL'] as String?;
    _confidenceScore = snapshotData['confidenceScore'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('PlantRecognitionResults');

  static Stream<PlantRecognitionResultsRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => PlantRecognitionResultsRecord.fromSnapshot(s));

  static Future<PlantRecognitionResultsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => PlantRecognitionResultsRecord.fromSnapshot(s));

  static PlantRecognitionResultsRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      PlantRecognitionResultsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PlantRecognitionResultsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PlantRecognitionResultsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PlantRecognitionResultsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PlantRecognitionResultsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPlantRecognitionResultsRecordData({
  DocumentReference? imageID,
  DocumentReference? plantID,
  DateTime? recognitionTime,
  String? imageURL,
  String? confidenceScore,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'imageID': imageID,
      'plantID': plantID,
      'recognitionTime': recognitionTime,
      'imageURL': imageURL,
      'confidenceScore': confidenceScore,
    }.withoutNulls,
  );

  return firestoreData;
}

class PlantRecognitionResultsRecordDocumentEquality
    implements Equality<PlantRecognitionResultsRecord> {
  const PlantRecognitionResultsRecordDocumentEquality();

  @override
  bool equals(
      PlantRecognitionResultsRecord? e1, PlantRecognitionResultsRecord? e2) {
    return e1?.imageID == e2?.imageID &&
        e1?.plantID == e2?.plantID &&
        e1?.recognitionTime == e2?.recognitionTime &&
        e1?.imageURL == e2?.imageURL &&
        e1?.confidenceScore == e2?.confidenceScore;
  }

  @override
  int hash(PlantRecognitionResultsRecord? e) => const ListEquality().hash([
        e?.imageID,
        e?.plantID,
        e?.recognitionTime,
        e?.imageURL,
        e?.confidenceScore
      ]);

  @override
  bool isValidKey(Object? o) => o is PlantRecognitionResultsRecord;
}
