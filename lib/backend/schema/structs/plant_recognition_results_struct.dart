// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PlantRecognitionResultsStruct extends FFFirebaseStruct {
  PlantRecognitionResultsStruct({
    DocumentReference? imageID,
    DocumentReference? plantID,
    DateTime? recognitionTime,
    String? imageURL,
    String? confidenceScore,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _imageID = imageID,
        _plantID = plantID,
        _recognitionTime = recognitionTime,
        _imageURL = imageURL,
        _confidenceScore = confidenceScore,
        super(firestoreUtilData);

  // "imageID" field.
  DocumentReference? _imageID;
  DocumentReference? get imageID => _imageID;
  set imageID(DocumentReference? val) => _imageID = val;

  bool hasImageID() => _imageID != null;

  // "plantID" field.
  DocumentReference? _plantID;
  DocumentReference? get plantID => _plantID;
  set plantID(DocumentReference? val) => _plantID = val;

  bool hasPlantID() => _plantID != null;

  // "recognitionTime" field.
  DateTime? _recognitionTime;
  DateTime? get recognitionTime => _recognitionTime;
  set recognitionTime(DateTime? val) => _recognitionTime = val;

  bool hasRecognitionTime() => _recognitionTime != null;

  // "imageURL" field.
  String? _imageURL;
  String get imageURL => _imageURL ?? '';
  set imageURL(String? val) => _imageURL = val;

  bool hasImageURL() => _imageURL != null;

  // "confidenceScore" field.
  String? _confidenceScore;
  String get confidenceScore => _confidenceScore ?? '';
  set confidenceScore(String? val) => _confidenceScore = val;

  bool hasConfidenceScore() => _confidenceScore != null;

  static PlantRecognitionResultsStruct fromMap(Map<String, dynamic> data) =>
      PlantRecognitionResultsStruct(
        imageID: data['imageID'] as DocumentReference?,
        plantID: data['plantID'] as DocumentReference?,
        recognitionTime: data['recognitionTime'] as DateTime?,
        imageURL: data['imageURL'] as String?,
        confidenceScore: data['confidenceScore'] as String?,
      );

  static PlantRecognitionResultsStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? PlantRecognitionResultsStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'imageID': _imageID,
        'plantID': _plantID,
        'recognitionTime': _recognitionTime,
        'imageURL': _imageURL,
        'confidenceScore': _confidenceScore,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'imageID': serializeParam(
          _imageID,
          ParamType.DocumentReference,
        ),
        'plantID': serializeParam(
          _plantID,
          ParamType.DocumentReference,
        ),
        'recognitionTime': serializeParam(
          _recognitionTime,
          ParamType.DateTime,
        ),
        'imageURL': serializeParam(
          _imageURL,
          ParamType.String,
        ),
        'confidenceScore': serializeParam(
          _confidenceScore,
          ParamType.String,
        ),
      }.withoutNulls;

  static PlantRecognitionResultsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PlantRecognitionResultsStruct(
        imageID: deserializeParam(
          data['imageID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['images'],
        ),
        plantID: deserializeParam(
          data['plantID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['plants'],
        ),
        recognitionTime: deserializeParam(
          data['recognitionTime'],
          ParamType.DateTime,
          false,
        ),
        imageURL: deserializeParam(
          data['imageURL'],
          ParamType.String,
          false,
        ),
        confidenceScore: deserializeParam(
          data['confidenceScore'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PlantRecognitionResultsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PlantRecognitionResultsStruct &&
        imageID == other.imageID &&
        plantID == other.plantID &&
        recognitionTime == other.recognitionTime &&
        imageURL == other.imageURL &&
        confidenceScore == other.confidenceScore;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([imageID, plantID, recognitionTime, imageURL, confidenceScore]);
}

PlantRecognitionResultsStruct createPlantRecognitionResultsStruct({
  DocumentReference? imageID,
  DocumentReference? plantID,
  DateTime? recognitionTime,
  String? imageURL,
  String? confidenceScore,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PlantRecognitionResultsStruct(
      imageID: imageID,
      plantID: plantID,
      recognitionTime: recognitionTime,
      imageURL: imageURL,
      confidenceScore: confidenceScore,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PlantRecognitionResultsStruct? updatePlantRecognitionResultsStruct(
  PlantRecognitionResultsStruct? plantRecognitionResults, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    plantRecognitionResults
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPlantRecognitionResultsStructData(
  Map<String, dynamic> firestoreData,
  PlantRecognitionResultsStruct? plantRecognitionResults,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (plantRecognitionResults == null) {
    return;
  }
  if (plantRecognitionResults.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      plantRecognitionResults.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final plantRecognitionResultsData = getPlantRecognitionResultsFirestoreData(
      plantRecognitionResults, forFieldValue);
  final nestedData =
      plantRecognitionResultsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      plantRecognitionResults.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPlantRecognitionResultsFirestoreData(
  PlantRecognitionResultsStruct? plantRecognitionResults, [
  bool forFieldValue = false,
]) {
  if (plantRecognitionResults == null) {
    return {};
  }
  final firestoreData = mapToFirestore(plantRecognitionResults.toMap());

  // Add any Firestore field values
  plantRecognitionResults.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPlantRecognitionResultsListFirestoreData(
  List<PlantRecognitionResultsStruct>? plantRecognitionResultss,
) =>
    plantRecognitionResultss
        ?.map((e) => getPlantRecognitionResultsFirestoreData(e, true))
        .toList() ??
    [];
