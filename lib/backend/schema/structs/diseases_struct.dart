// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DiseasesStruct extends FFFirebaseStruct {
  DiseasesStruct({
    String? name,
    String? description,
    List<String>? symptoms,
    String? causes,
    List<String>? treatments,
    String? prevention,
    String? image,
    List<String>? relatedPlants,
    String? riskFactors,
    String? complications,
    String? diagnostic,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _description = description,
        _symptoms = symptoms,
        _causes = causes,
        _treatments = treatments,
        _prevention = prevention,
        _image = image,
        _relatedPlants = relatedPlants,
        _riskFactors = riskFactors,
        _complications = complications,
        _diagnostic = diagnostic,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "symptoms" field.
  List<String>? _symptoms;
  List<String> get symptoms => _symptoms ?? const [];
  set symptoms(List<String>? val) => _symptoms = val;

  void updateSymptoms(Function(List<String>) updateFn) {
    updateFn(_symptoms ??= []);
  }

  bool hasSymptoms() => _symptoms != null;

  // "causes" field.
  String? _causes;
  String get causes => _causes ?? '';
  set causes(String? val) => _causes = val;

  bool hasCauses() => _causes != null;

  // "treatments" field.
  List<String>? _treatments;
  List<String> get treatments => _treatments ?? const [];
  set treatments(List<String>? val) => _treatments = val;

  void updateTreatments(Function(List<String>) updateFn) {
    updateFn(_treatments ??= []);
  }

  bool hasTreatments() => _treatments != null;

  // "prevention" field.
  String? _prevention;
  String get prevention => _prevention ?? '';
  set prevention(String? val) => _prevention = val;

  bool hasPrevention() => _prevention != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "relatedPlants" field.
  List<String>? _relatedPlants;
  List<String> get relatedPlants => _relatedPlants ?? const [];
  set relatedPlants(List<String>? val) => _relatedPlants = val;

  void updateRelatedPlants(Function(List<String>) updateFn) {
    updateFn(_relatedPlants ??= []);
  }

  bool hasRelatedPlants() => _relatedPlants != null;

  // "riskFactors" field.
  String? _riskFactors;
  String get riskFactors => _riskFactors ?? '';
  set riskFactors(String? val) => _riskFactors = val;

  bool hasRiskFactors() => _riskFactors != null;

  // "complications" field.
  String? _complications;
  String get complications => _complications ?? '';
  set complications(String? val) => _complications = val;

  bool hasComplications() => _complications != null;

  // "diagnostic" field.
  String? _diagnostic;
  String get diagnostic => _diagnostic ?? '';
  set diagnostic(String? val) => _diagnostic = val;

  bool hasDiagnostic() => _diagnostic != null;

  static DiseasesStruct fromMap(Map<String, dynamic> data) => DiseasesStruct(
        name: data['name'] as String?,
        description: data['description'] as String?,
        symptoms: getDataList(data['symptoms']),
        causes: data['causes'] as String?,
        treatments: getDataList(data['treatments']),
        prevention: data['prevention'] as String?,
        image: data['image'] as String?,
        relatedPlants: getDataList(data['relatedPlants']),
        riskFactors: data['riskFactors'] as String?,
        complications: data['complications'] as String?,
        diagnostic: data['diagnostic'] as String?,
      );

  static DiseasesStruct? maybeFromMap(dynamic data) =>
      data is Map ? DiseasesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'description': _description,
        'symptoms': _symptoms,
        'causes': _causes,
        'treatments': _treatments,
        'prevention': _prevention,
        'image': _image,
        'relatedPlants': _relatedPlants,
        'riskFactors': _riskFactors,
        'complications': _complications,
        'diagnostic': _diagnostic,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'symptoms': serializeParam(
          _symptoms,
          ParamType.String,
          isList: true,
        ),
        'causes': serializeParam(
          _causes,
          ParamType.String,
        ),
        'treatments': serializeParam(
          _treatments,
          ParamType.String,
          isList: true,
        ),
        'prevention': serializeParam(
          _prevention,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'relatedPlants': serializeParam(
          _relatedPlants,
          ParamType.String,
          isList: true,
        ),
        'riskFactors': serializeParam(
          _riskFactors,
          ParamType.String,
        ),
        'complications': serializeParam(
          _complications,
          ParamType.String,
        ),
        'diagnostic': serializeParam(
          _diagnostic,
          ParamType.String,
        ),
      }.withoutNulls;

  static DiseasesStruct fromSerializableMap(Map<String, dynamic> data) =>
      DiseasesStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        symptoms: deserializeParam<String>(
          data['symptoms'],
          ParamType.String,
          true,
        ),
        causes: deserializeParam(
          data['causes'],
          ParamType.String,
          false,
        ),
        treatments: deserializeParam<String>(
          data['treatments'],
          ParamType.String,
          true,
        ),
        prevention: deserializeParam(
          data['prevention'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        relatedPlants: deserializeParam<String>(
          data['relatedPlants'],
          ParamType.String,
          true,
        ),
        riskFactors: deserializeParam(
          data['riskFactors'],
          ParamType.String,
          false,
        ),
        complications: deserializeParam(
          data['complications'],
          ParamType.String,
          false,
        ),
        diagnostic: deserializeParam(
          data['diagnostic'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DiseasesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DiseasesStruct &&
        name == other.name &&
        description == other.description &&
        listEquality.equals(symptoms, other.symptoms) &&
        causes == other.causes &&
        listEquality.equals(treatments, other.treatments) &&
        prevention == other.prevention &&
        image == other.image &&
        listEquality.equals(relatedPlants, other.relatedPlants) &&
        riskFactors == other.riskFactors &&
        complications == other.complications &&
        diagnostic == other.diagnostic;
  }

  @override
  int get hashCode => const ListEquality().hash([
        name,
        description,
        symptoms,
        causes,
        treatments,
        prevention,
        image,
        relatedPlants,
        riskFactors,
        complications,
        diagnostic
      ]);
}

DiseasesStruct createDiseasesStruct({
  String? name,
  String? description,
  String? causes,
  String? prevention,
  String? image,
  String? riskFactors,
  String? complications,
  String? diagnostic,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DiseasesStruct(
      name: name,
      description: description,
      causes: causes,
      prevention: prevention,
      image: image,
      riskFactors: riskFactors,
      complications: complications,
      diagnostic: diagnostic,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DiseasesStruct? updateDiseasesStruct(
  DiseasesStruct? diseases, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    diseases
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDiseasesStructData(
  Map<String, dynamic> firestoreData,
  DiseasesStruct? diseases,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (diseases == null) {
    return;
  }
  if (diseases.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && diseases.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final diseasesData = getDiseasesFirestoreData(diseases, forFieldValue);
  final nestedData = diseasesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = diseases.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDiseasesFirestoreData(
  DiseasesStruct? diseases, [
  bool forFieldValue = false,
]) {
  if (diseases == null) {
    return {};
  }
  final firestoreData = mapToFirestore(diseases.toMap());

  // Add any Firestore field values
  diseases.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDiseasesListFirestoreData(
  List<DiseasesStruct>? diseasess,
) =>
    diseasess?.map((e) => getDiseasesFirestoreData(e, true)).toList() ?? [];
