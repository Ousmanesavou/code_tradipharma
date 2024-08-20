// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlantsStruct extends FFFirebaseStruct {
  PlantsStruct({
    String? sciName,
    String? comName,
    String? description,
    List<String>? partsUsed,
    String? medProps,
    String? tradUses,
    String? prepDosage,
    String? precautions,
    String? cultZones,
    String? mainImage,
    bool? isLiked,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _sciName = sciName,
        _comName = comName,
        _description = description,
        _partsUsed = partsUsed,
        _medProps = medProps,
        _tradUses = tradUses,
        _prepDosage = prepDosage,
        _precautions = precautions,
        _cultZones = cultZones,
        _mainImage = mainImage,
        _isLiked = isLiked,
        super(firestoreUtilData);

  // "sciName" field.
  String? _sciName;
  String get sciName => _sciName ?? '';
  set sciName(String? val) => _sciName = val;

  bool hasSciName() => _sciName != null;

  // "comName" field.
  String? _comName;
  String get comName => _comName ?? '';
  set comName(String? val) => _comName = val;

  bool hasComName() => _comName != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "partsUsed" field.
  List<String>? _partsUsed;
  List<String> get partsUsed => _partsUsed ?? const [];
  set partsUsed(List<String>? val) => _partsUsed = val;

  void updatePartsUsed(Function(List<String>) updateFn) {
    updateFn(_partsUsed ??= []);
  }

  bool hasPartsUsed() => _partsUsed != null;

  // "medProps" field.
  String? _medProps;
  String get medProps => _medProps ?? '';
  set medProps(String? val) => _medProps = val;

  bool hasMedProps() => _medProps != null;

  // "tradUses" field.
  String? _tradUses;
  String get tradUses => _tradUses ?? '';
  set tradUses(String? val) => _tradUses = val;

  bool hasTradUses() => _tradUses != null;

  // "prepDosage" field.
  String? _prepDosage;
  String get prepDosage => _prepDosage ?? '';
  set prepDosage(String? val) => _prepDosage = val;

  bool hasPrepDosage() => _prepDosage != null;

  // "precautions" field.
  String? _precautions;
  String get precautions => _precautions ?? '';
  set precautions(String? val) => _precautions = val;

  bool hasPrecautions() => _precautions != null;

  // "cultZones" field.
  String? _cultZones;
  String get cultZones => _cultZones ?? '';
  set cultZones(String? val) => _cultZones = val;

  bool hasCultZones() => _cultZones != null;

  // "mainImage" field.
  String? _mainImage;
  String get mainImage => _mainImage ?? '';
  set mainImage(String? val) => _mainImage = val;

  bool hasMainImage() => _mainImage != null;

  // "isLiked" field.
  bool? _isLiked;
  bool get isLiked => _isLiked ?? false;
  set isLiked(bool? val) => _isLiked = val;

  bool hasIsLiked() => _isLiked != null;

  static PlantsStruct fromMap(Map<String, dynamic> data) => PlantsStruct(
        sciName: data['sciName'] as String?,
        comName: data['comName'] as String?,
        description: data['description'] as String?,
        partsUsed: getDataList(data['partsUsed']),
        medProps: data['medProps'] as String?,
        tradUses: data['tradUses'] as String?,
        prepDosage: data['prepDosage'] as String?,
        precautions: data['precautions'] as String?,
        cultZones: data['cultZones'] as String?,
        mainImage: data['mainImage'] as String?,
        isLiked: data['isLiked'] as bool?,
      );

  static PlantsStruct? maybeFromMap(dynamic data) =>
      data is Map ? PlantsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'sciName': _sciName,
        'comName': _comName,
        'description': _description,
        'partsUsed': _partsUsed,
        'medProps': _medProps,
        'tradUses': _tradUses,
        'prepDosage': _prepDosage,
        'precautions': _precautions,
        'cultZones': _cultZones,
        'mainImage': _mainImage,
        'isLiked': _isLiked,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'sciName': serializeParam(
          _sciName,
          ParamType.String,
        ),
        'comName': serializeParam(
          _comName,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'partsUsed': serializeParam(
          _partsUsed,
          ParamType.String,
          isList: true,
        ),
        'medProps': serializeParam(
          _medProps,
          ParamType.String,
        ),
        'tradUses': serializeParam(
          _tradUses,
          ParamType.String,
        ),
        'prepDosage': serializeParam(
          _prepDosage,
          ParamType.String,
        ),
        'precautions': serializeParam(
          _precautions,
          ParamType.String,
        ),
        'cultZones': serializeParam(
          _cultZones,
          ParamType.String,
        ),
        'mainImage': serializeParam(
          _mainImage,
          ParamType.String,
        ),
        'isLiked': serializeParam(
          _isLiked,
          ParamType.bool,
        ),
      }.withoutNulls;

  static PlantsStruct fromSerializableMap(Map<String, dynamic> data) =>
      PlantsStruct(
        sciName: deserializeParam(
          data['sciName'],
          ParamType.String,
          false,
        ),
        comName: deserializeParam(
          data['comName'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        partsUsed: deserializeParam<String>(
          data['partsUsed'],
          ParamType.String,
          true,
        ),
        medProps: deserializeParam(
          data['medProps'],
          ParamType.String,
          false,
        ),
        tradUses: deserializeParam(
          data['tradUses'],
          ParamType.String,
          false,
        ),
        prepDosage: deserializeParam(
          data['prepDosage'],
          ParamType.String,
          false,
        ),
        precautions: deserializeParam(
          data['precautions'],
          ParamType.String,
          false,
        ),
        cultZones: deserializeParam(
          data['cultZones'],
          ParamType.String,
          false,
        ),
        mainImage: deserializeParam(
          data['mainImage'],
          ParamType.String,
          false,
        ),
        isLiked: deserializeParam(
          data['isLiked'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'PlantsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PlantsStruct &&
        sciName == other.sciName &&
        comName == other.comName &&
        description == other.description &&
        listEquality.equals(partsUsed, other.partsUsed) &&
        medProps == other.medProps &&
        tradUses == other.tradUses &&
        prepDosage == other.prepDosage &&
        precautions == other.precautions &&
        cultZones == other.cultZones &&
        mainImage == other.mainImage &&
        isLiked == other.isLiked;
  }

  @override
  int get hashCode => const ListEquality().hash([
        sciName,
        comName,
        description,
        partsUsed,
        medProps,
        tradUses,
        prepDosage,
        precautions,
        cultZones,
        mainImage,
        isLiked
      ]);
}

PlantsStruct createPlantsStruct({
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
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PlantsStruct(
      sciName: sciName,
      comName: comName,
      description: description,
      medProps: medProps,
      tradUses: tradUses,
      prepDosage: prepDosage,
      precautions: precautions,
      cultZones: cultZones,
      mainImage: mainImage,
      isLiked: isLiked,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PlantsStruct? updatePlantsStruct(
  PlantsStruct? plants, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    plants
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPlantsStructData(
  Map<String, dynamic> firestoreData,
  PlantsStruct? plants,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (plants == null) {
    return;
  }
  if (plants.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && plants.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final plantsData = getPlantsFirestoreData(plants, forFieldValue);
  final nestedData = plantsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = plants.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPlantsFirestoreData(
  PlantsStruct? plants, [
  bool forFieldValue = false,
]) {
  if (plants == null) {
    return {};
  }
  final firestoreData = mapToFirestore(plants.toMap());

  // Add any Firestore field values
  plants.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPlantsListFirestoreData(
  List<PlantsStruct>? plantss,
) =>
    plantss?.map((e) => getPlantsFirestoreData(e, true)).toList() ?? [];
