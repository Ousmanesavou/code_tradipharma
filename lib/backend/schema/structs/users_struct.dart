// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersStruct extends FFFirebaseStruct {
  UsersStruct({
    String? name,
    String? email,
    String? loginMethod,
    String? profilePicture,
    bool? notificationsEnabled,
    List<String>? favoritePlantsListString,
    DateTime? lastLogin,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _email = email,
        _loginMethod = loginMethod,
        _profilePicture = profilePicture,
        _notificationsEnabled = notificationsEnabled,
        _favoritePlantsListString = favoritePlantsListString,
        _lastLogin = lastLogin,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "loginMethod" field.
  String? _loginMethod;
  String get loginMethod => _loginMethod ?? '';
  set loginMethod(String? val) => _loginMethod = val;

  bool hasLoginMethod() => _loginMethod != null;

  // "profilePicture" field.
  String? _profilePicture;
  String get profilePicture => _profilePicture ?? '';
  set profilePicture(String? val) => _profilePicture = val;

  bool hasProfilePicture() => _profilePicture != null;

  // "notificationsEnabled" field.
  bool? _notificationsEnabled;
  bool get notificationsEnabled => _notificationsEnabled ?? false;
  set notificationsEnabled(bool? val) => _notificationsEnabled = val;

  bool hasNotificationsEnabled() => _notificationsEnabled != null;

  // "favoritePlantsListString" field.
  List<String>? _favoritePlantsListString;
  List<String> get favoritePlantsListString =>
      _favoritePlantsListString ?? const [];
  set favoritePlantsListString(List<String>? val) =>
      _favoritePlantsListString = val;

  void updateFavoritePlantsListString(Function(List<String>) updateFn) {
    updateFn(_favoritePlantsListString ??= []);
  }

  bool hasFavoritePlantsListString() => _favoritePlantsListString != null;

  // "lastLogin" field.
  DateTime? _lastLogin;
  DateTime? get lastLogin => _lastLogin;
  set lastLogin(DateTime? val) => _lastLogin = val;

  bool hasLastLogin() => _lastLogin != null;

  static UsersStruct fromMap(Map<String, dynamic> data) => UsersStruct(
        name: data['name'] as String?,
        email: data['email'] as String?,
        loginMethod: data['loginMethod'] as String?,
        profilePicture: data['profilePicture'] as String?,
        notificationsEnabled: data['notificationsEnabled'] as bool?,
        favoritePlantsListString: getDataList(data['favoritePlantsListString']),
        lastLogin: data['lastLogin'] as DateTime?,
      );

  static UsersStruct? maybeFromMap(dynamic data) =>
      data is Map ? UsersStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'email': _email,
        'loginMethod': _loginMethod,
        'profilePicture': _profilePicture,
        'notificationsEnabled': _notificationsEnabled,
        'favoritePlantsListString': _favoritePlantsListString,
        'lastLogin': _lastLogin,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'loginMethod': serializeParam(
          _loginMethod,
          ParamType.String,
        ),
        'profilePicture': serializeParam(
          _profilePicture,
          ParamType.String,
        ),
        'notificationsEnabled': serializeParam(
          _notificationsEnabled,
          ParamType.bool,
        ),
        'favoritePlantsListString': serializeParam(
          _favoritePlantsListString,
          ParamType.String,
          isList: true,
        ),
        'lastLogin': serializeParam(
          _lastLogin,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static UsersStruct fromSerializableMap(Map<String, dynamic> data) =>
      UsersStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        loginMethod: deserializeParam(
          data['loginMethod'],
          ParamType.String,
          false,
        ),
        profilePicture: deserializeParam(
          data['profilePicture'],
          ParamType.String,
          false,
        ),
        notificationsEnabled: deserializeParam(
          data['notificationsEnabled'],
          ParamType.bool,
          false,
        ),
        favoritePlantsListString: deserializeParam<String>(
          data['favoritePlantsListString'],
          ParamType.String,
          true,
        ),
        lastLogin: deserializeParam(
          data['lastLogin'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'UsersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UsersStruct &&
        name == other.name &&
        email == other.email &&
        loginMethod == other.loginMethod &&
        profilePicture == other.profilePicture &&
        notificationsEnabled == other.notificationsEnabled &&
        listEquality.equals(
            favoritePlantsListString, other.favoritePlantsListString) &&
        lastLogin == other.lastLogin;
  }

  @override
  int get hashCode => const ListEquality().hash([
        name,
        email,
        loginMethod,
        profilePicture,
        notificationsEnabled,
        favoritePlantsListString,
        lastLogin
      ]);
}

UsersStruct createUsersStruct({
  String? name,
  String? email,
  String? loginMethod,
  String? profilePicture,
  bool? notificationsEnabled,
  DateTime? lastLogin,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UsersStruct(
      name: name,
      email: email,
      loginMethod: loginMethod,
      profilePicture: profilePicture,
      notificationsEnabled: notificationsEnabled,
      lastLogin: lastLogin,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UsersStruct? updateUsersStruct(
  UsersStruct? users, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    users
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUsersStructData(
  Map<String, dynamic> firestoreData,
  UsersStruct? users,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (users == null) {
    return;
  }
  if (users.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && users.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final usersData = getUsersFirestoreData(users, forFieldValue);
  final nestedData = usersData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = users.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUsersFirestoreData(
  UsersStruct? users, [
  bool forFieldValue = false,
]) {
  if (users == null) {
    return {};
  }
  final firestoreData = mapToFirestore(users.toMap());

  // Add any Firestore field values
  users.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUsersListFirestoreData(
  List<UsersStruct>? userss,
) =>
    userss?.map((e) => getUsersFirestoreData(e, true)).toList() ?? [];
