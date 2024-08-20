// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class MessagesStruct extends FFFirebaseStruct {
  MessagesStruct({
    DocumentReference? senderTD,
    DocumentReference? receiverID,
    String? content,
    DateTime? timestamp,
    bool? read,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _senderTD = senderTD,
        _receiverID = receiverID,
        _content = content,
        _timestamp = timestamp,
        _read = read,
        super(firestoreUtilData);

  // "senderTD" field.
  DocumentReference? _senderTD;
  DocumentReference? get senderTD => _senderTD;
  set senderTD(DocumentReference? val) => _senderTD = val;

  bool hasSenderTD() => _senderTD != null;

  // "receiverID" field.
  DocumentReference? _receiverID;
  DocumentReference? get receiverID => _receiverID;
  set receiverID(DocumentReference? val) => _receiverID = val;

  bool hasReceiverID() => _receiverID != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  set content(String? val) => _content = val;

  bool hasContent() => _content != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  set timestamp(DateTime? val) => _timestamp = val;

  bool hasTimestamp() => _timestamp != null;

  // "read" field.
  bool? _read;
  bool get read => _read ?? false;
  set read(bool? val) => _read = val;

  bool hasRead() => _read != null;

  static MessagesStruct fromMap(Map<String, dynamic> data) => MessagesStruct(
        senderTD: data['senderTD'] as DocumentReference?,
        receiverID: data['receiverID'] as DocumentReference?,
        content: data['content'] as String?,
        timestamp: data['timestamp'] as DateTime?,
        read: data['read'] as bool?,
      );

  static MessagesStruct? maybeFromMap(dynamic data) =>
      data is Map ? MessagesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'senderTD': _senderTD,
        'receiverID': _receiverID,
        'content': _content,
        'timestamp': _timestamp,
        'read': _read,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'senderTD': serializeParam(
          _senderTD,
          ParamType.DocumentReference,
        ),
        'receiverID': serializeParam(
          _receiverID,
          ParamType.DocumentReference,
        ),
        'content': serializeParam(
          _content,
          ParamType.String,
        ),
        'timestamp': serializeParam(
          _timestamp,
          ParamType.DateTime,
        ),
        'read': serializeParam(
          _read,
          ParamType.bool,
        ),
      }.withoutNulls;

  static MessagesStruct fromSerializableMap(Map<String, dynamic> data) =>
      MessagesStruct(
        senderTD: deserializeParam(
          data['senderTD'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        receiverID: deserializeParam(
          data['receiverID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        content: deserializeParam(
          data['content'],
          ParamType.String,
          false,
        ),
        timestamp: deserializeParam(
          data['timestamp'],
          ParamType.DateTime,
          false,
        ),
        read: deserializeParam(
          data['read'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'MessagesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MessagesStruct &&
        senderTD == other.senderTD &&
        receiverID == other.receiverID &&
        content == other.content &&
        timestamp == other.timestamp &&
        read == other.read;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([senderTD, receiverID, content, timestamp, read]);
}

MessagesStruct createMessagesStruct({
  DocumentReference? senderTD,
  DocumentReference? receiverID,
  String? content,
  DateTime? timestamp,
  bool? read,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MessagesStruct(
      senderTD: senderTD,
      receiverID: receiverID,
      content: content,
      timestamp: timestamp,
      read: read,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MessagesStruct? updateMessagesStruct(
  MessagesStruct? messages, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    messages
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMessagesStructData(
  Map<String, dynamic> firestoreData,
  MessagesStruct? messages,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (messages == null) {
    return;
  }
  if (messages.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && messages.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final messagesData = getMessagesFirestoreData(messages, forFieldValue);
  final nestedData = messagesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = messages.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMessagesFirestoreData(
  MessagesStruct? messages, [
  bool forFieldValue = false,
]) {
  if (messages == null) {
    return {};
  }
  final firestoreData = mapToFirestore(messages.toMap());

  // Add any Firestore field values
  messages.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMessagesListFirestoreData(
  List<MessagesStruct>? messagess,
) =>
    messagess?.map((e) => getMessagesFirestoreData(e, true)).toList() ?? [];
