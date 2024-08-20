import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MessagesRecord extends FirestoreRecord {
  MessagesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "senderID" field.
  DocumentReference? _senderID;
  DocumentReference? get senderID => _senderID;
  bool hasSenderID() => _senderID != null;

  // "receiverID" field.
  DocumentReference? _receiverID;
  DocumentReference? get receiverID => _receiverID;
  bool hasReceiverID() => _receiverID != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "read" field.
  bool? _read;
  bool get read => _read ?? false;
  bool hasRead() => _read != null;

  void _initializeFields() {
    _senderID = snapshotData['senderID'] as DocumentReference?;
    _receiverID = snapshotData['receiverID'] as DocumentReference?;
    _content = snapshotData['content'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _read = snapshotData['read'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('messages');

  static Stream<MessagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MessagesRecord.fromSnapshot(s));

  static Future<MessagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MessagesRecord.fromSnapshot(s));

  static MessagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MessagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MessagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MessagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MessagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MessagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMessagesRecordData({
  DocumentReference? senderID,
  DocumentReference? receiverID,
  String? content,
  DateTime? timestamp,
  bool? read,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'senderID': senderID,
      'receiverID': receiverID,
      'content': content,
      'timestamp': timestamp,
      'read': read,
    }.withoutNulls,
  );

  return firestoreData;
}

class MessagesRecordDocumentEquality implements Equality<MessagesRecord> {
  const MessagesRecordDocumentEquality();

  @override
  bool equals(MessagesRecord? e1, MessagesRecord? e2) {
    return e1?.senderID == e2?.senderID &&
        e1?.receiverID == e2?.receiverID &&
        e1?.content == e2?.content &&
        e1?.timestamp == e2?.timestamp &&
        e1?.read == e2?.read;
  }

  @override
  int hash(MessagesRecord? e) => const ListEquality()
      .hash([e?.senderID, e?.receiverID, e?.content, e?.timestamp, e?.read]);

  @override
  bool isValidKey(Object? o) => o is MessagesRecord;
}
