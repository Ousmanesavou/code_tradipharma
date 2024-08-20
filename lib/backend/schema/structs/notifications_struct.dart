// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class NotificationsStruct extends FFFirebaseStruct {
  NotificationsStruct({
    DocumentReference? userID,
    String? content,
    DateTime? timestamp,
    String? type,
    bool? readstatus,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _userID = userID,
        _content = content,
        _timestamp = timestamp,
        _type = type,
        _readstatus = readstatus,
        super(firestoreUtilData);

  // "userID" field.
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  set userID(DocumentReference? val) => _userID = val;

  bool hasUserID() => _userID != null;

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

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "readstatus" field.
  bool? _readstatus;
  bool get readstatus => _readstatus ?? false;
  set readstatus(bool? val) => _readstatus = val;

  bool hasReadstatus() => _readstatus != null;

  static NotificationsStruct fromMap(Map<String, dynamic> data) =>
      NotificationsStruct(
        userID: data['userID'] as DocumentReference?,
        content: data['content'] as String?,
        timestamp: data['timestamp'] as DateTime?,
        type: data['type'] as String?,
        readstatus: data['readstatus'] as bool?,
      );

  static NotificationsStruct? maybeFromMap(dynamic data) => data is Map
      ? NotificationsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'userID': _userID,
        'content': _content,
        'timestamp': _timestamp,
        'type': _type,
        'readstatus': _readstatus,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'userID': serializeParam(
          _userID,
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
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'readstatus': serializeParam(
          _readstatus,
          ParamType.bool,
        ),
      }.withoutNulls;

  static NotificationsStruct fromSerializableMap(Map<String, dynamic> data) =>
      NotificationsStruct(
        userID: deserializeParam(
          data['userID'],
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
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        readstatus: deserializeParam(
          data['readstatus'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'NotificationsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NotificationsStruct &&
        userID == other.userID &&
        content == other.content &&
        timestamp == other.timestamp &&
        type == other.type &&
        readstatus == other.readstatus;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([userID, content, timestamp, type, readstatus]);
}

NotificationsStruct createNotificationsStruct({
  DocumentReference? userID,
  String? content,
  DateTime? timestamp,
  String? type,
  bool? readstatus,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    NotificationsStruct(
      userID: userID,
      content: content,
      timestamp: timestamp,
      type: type,
      readstatus: readstatus,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

NotificationsStruct? updateNotificationsStruct(
  NotificationsStruct? notifications, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    notifications
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addNotificationsStructData(
  Map<String, dynamic> firestoreData,
  NotificationsStruct? notifications,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (notifications == null) {
    return;
  }
  if (notifications.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && notifications.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final notificationsData =
      getNotificationsFirestoreData(notifications, forFieldValue);
  final nestedData =
      notificationsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = notifications.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getNotificationsFirestoreData(
  NotificationsStruct? notifications, [
  bool forFieldValue = false,
]) {
  if (notifications == null) {
    return {};
  }
  final firestoreData = mapToFirestore(notifications.toMap());

  // Add any Firestore field values
  notifications.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getNotificationsListFirestoreData(
  List<NotificationsStruct>? notificationss,
) =>
    notificationss
        ?.map((e) => getNotificationsFirestoreData(e, true))
        .toList() ??
    [];
