import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VideosRecord extends FirestoreRecord {
  VideosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "plantID" field.
  DocumentReference? _plantID;
  DocumentReference? get plantID => _plantID;
  bool hasPlantID() => _plantID != null;

  // "uploadDate" field.
  DateTime? _uploadDate;
  DateTime? get uploadDate => _uploadDate;
  bool hasUploadDate() => _uploadDate != null;

  // "duration" field.
  String? _duration;
  String get duration => _duration ?? '';
  bool hasDuration() => _duration != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _url = snapshotData['url'] as String?;
    _description = snapshotData['description'] as String?;
    _plantID = snapshotData['plantID'] as DocumentReference?;
    _uploadDate = snapshotData['uploadDate'] as DateTime?;
    _duration = snapshotData['duration'] as String?;
    _category = snapshotData['category'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('videos');

  static Stream<VideosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VideosRecord.fromSnapshot(s));

  static Future<VideosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VideosRecord.fromSnapshot(s));

  static VideosRecord fromSnapshot(DocumentSnapshot snapshot) => VideosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VideosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VideosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VideosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VideosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVideosRecordData({
  String? title,
  String? url,
  String? description,
  DocumentReference? plantID,
  DateTime? uploadDate,
  String? duration,
  String? category,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'url': url,
      'description': description,
      'plantID': plantID,
      'uploadDate': uploadDate,
      'duration': duration,
      'category': category,
    }.withoutNulls,
  );

  return firestoreData;
}

class VideosRecordDocumentEquality implements Equality<VideosRecord> {
  const VideosRecordDocumentEquality();

  @override
  bool equals(VideosRecord? e1, VideosRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.url == e2?.url &&
        e1?.description == e2?.description &&
        e1?.plantID == e2?.plantID &&
        e1?.uploadDate == e2?.uploadDate &&
        e1?.duration == e2?.duration &&
        e1?.category == e2?.category;
  }

  @override
  int hash(VideosRecord? e) => const ListEquality().hash([
        e?.title,
        e?.url,
        e?.description,
        e?.plantID,
        e?.uploadDate,
        e?.duration,
        e?.category
      ]);

  @override
  bool isValidKey(Object? o) => o is VideosRecord;
}
