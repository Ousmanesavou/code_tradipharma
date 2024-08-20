import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImagesRecord extends FirestoreRecord {
  ImagesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "userID" field.
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  bool hasUserID() => _userID != null;

  // "plantID" field.
  DocumentReference? _plantID;
  DocumentReference? get plantID => _plantID;
  bool hasPlantID() => _plantID != null;

  // "imageURL" field.
  String? _imageURL;
  String get imageURL => _imageURL ?? '';
  bool hasImageURL() => _imageURL != null;

  // "uploadTime" field.
  DateTime? _uploadTime;
  DateTime? get uploadTime => _uploadTime;
  bool hasUploadTime() => _uploadTime != null;

  void _initializeFields() {
    _userID = snapshotData['userID'] as DocumentReference?;
    _plantID = snapshotData['plantID'] as DocumentReference?;
    _imageURL = snapshotData['imageURL'] as String?;
    _uploadTime = snapshotData['uploadTime'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('images');

  static Stream<ImagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ImagesRecord.fromSnapshot(s));

  static Future<ImagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ImagesRecord.fromSnapshot(s));

  static ImagesRecord fromSnapshot(DocumentSnapshot snapshot) => ImagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ImagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ImagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ImagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ImagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createImagesRecordData({
  DocumentReference? userID,
  DocumentReference? plantID,
  String? imageURL,
  DateTime? uploadTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userID': userID,
      'plantID': plantID,
      'imageURL': imageURL,
      'uploadTime': uploadTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class ImagesRecordDocumentEquality implements Equality<ImagesRecord> {
  const ImagesRecordDocumentEquality();

  @override
  bool equals(ImagesRecord? e1, ImagesRecord? e2) {
    return e1?.userID == e2?.userID &&
        e1?.plantID == e2?.plantID &&
        e1?.imageURL == e2?.imageURL &&
        e1?.uploadTime == e2?.uploadTime;
  }

  @override
  int hash(ImagesRecord? e) => const ListEquality()
      .hash([e?.userID, e?.plantID, e?.imageURL, e?.uploadTime]);

  @override
  bool isValidKey(Object? o) => o is ImagesRecord;
}
