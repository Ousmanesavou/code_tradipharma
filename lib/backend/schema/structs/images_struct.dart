// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ImagesStruct extends FFFirebaseStruct {
  ImagesStruct({
    DocumentReference? userID,
    DocumentReference? plantID,
    String? imageURL,
    DateTime? uploadTime,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _userID = userID,
        _plantID = plantID,
        _imageURL = imageURL,
        _uploadTime = uploadTime,
        super(firestoreUtilData);

  // "userID" field.
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  set userID(DocumentReference? val) => _userID = val;

  bool hasUserID() => _userID != null;

  // "plantID" field.
  DocumentReference? _plantID;
  DocumentReference? get plantID => _plantID;
  set plantID(DocumentReference? val) => _plantID = val;

  bool hasPlantID() => _plantID != null;

  // "imageURL" field.
  String? _imageURL;
  String get imageURL => _imageURL ?? '';
  set imageURL(String? val) => _imageURL = val;

  bool hasImageURL() => _imageURL != null;

  // "uploadTime" field.
  DateTime? _uploadTime;
  DateTime? get uploadTime => _uploadTime;
  set uploadTime(DateTime? val) => _uploadTime = val;

  bool hasUploadTime() => _uploadTime != null;

  static ImagesStruct fromMap(Map<String, dynamic> data) => ImagesStruct(
        userID: data['userID'] as DocumentReference?,
        plantID: data['plantID'] as DocumentReference?,
        imageURL: data['imageURL'] as String?,
        uploadTime: data['uploadTime'] as DateTime?,
      );

  static ImagesStruct? maybeFromMap(dynamic data) =>
      data is Map ? ImagesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'userID': _userID,
        'plantID': _plantID,
        'imageURL': _imageURL,
        'uploadTime': _uploadTime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'userID': serializeParam(
          _userID,
          ParamType.DocumentReference,
        ),
        'plantID': serializeParam(
          _plantID,
          ParamType.DocumentReference,
        ),
        'imageURL': serializeParam(
          _imageURL,
          ParamType.String,
        ),
        'uploadTime': serializeParam(
          _uploadTime,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static ImagesStruct fromSerializableMap(Map<String, dynamic> data) =>
      ImagesStruct(
        userID: deserializeParam(
          data['userID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        plantID: deserializeParam(
          data['plantID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['plants'],
        ),
        imageURL: deserializeParam(
          data['imageURL'],
          ParamType.String,
          false,
        ),
        uploadTime: deserializeParam(
          data['uploadTime'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'ImagesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ImagesStruct &&
        userID == other.userID &&
        plantID == other.plantID &&
        imageURL == other.imageURL &&
        uploadTime == other.uploadTime;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([userID, plantID, imageURL, uploadTime]);
}

ImagesStruct createImagesStruct({
  DocumentReference? userID,
  DocumentReference? plantID,
  String? imageURL,
  DateTime? uploadTime,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ImagesStruct(
      userID: userID,
      plantID: plantID,
      imageURL: imageURL,
      uploadTime: uploadTime,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ImagesStruct? updateImagesStruct(
  ImagesStruct? images, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    images
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addImagesStructData(
  Map<String, dynamic> firestoreData,
  ImagesStruct? images,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (images == null) {
    return;
  }
  if (images.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && images.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final imagesData = getImagesFirestoreData(images, forFieldValue);
  final nestedData = imagesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = images.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getImagesFirestoreData(
  ImagesStruct? images, [
  bool forFieldValue = false,
]) {
  if (images == null) {
    return {};
  }
  final firestoreData = mapToFirestore(images.toMap());

  // Add any Firestore field values
  images.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getImagesListFirestoreData(
  List<ImagesStruct>? imagess,
) =>
    imagess?.map((e) => getImagesFirestoreData(e, true)).toList() ?? [];
