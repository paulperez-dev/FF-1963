// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserEntitlementsStruct extends FFFirebaseStruct {
  UserEntitlementsStruct({
    DocumentReference? user,
    List<String>? entitlements,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _user = user,
        _entitlements = entitlements,
        super(firestoreUtilData);

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  set user(DocumentReference? val) => _user = val;

  bool hasUser() => _user != null;

  // "Entitlements" field.
  List<String>? _entitlements;
  List<String> get entitlements => _entitlements ?? const [];
  set entitlements(List<String>? val) => _entitlements = val;

  void updateEntitlements(Function(List<String>) updateFn) {
    updateFn(_entitlements ??= []);
  }

  bool hasEntitlements() => _entitlements != null;

  static UserEntitlementsStruct fromMap(Map<String, dynamic> data) =>
      UserEntitlementsStruct(
        user: data['user'] as DocumentReference?,
        entitlements: getDataList(data['Entitlements']),
      );

  static UserEntitlementsStruct? maybeFromMap(dynamic data) => data is Map
      ? UserEntitlementsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'user': _user,
        'Entitlements': _entitlements,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'user': serializeParam(
          _user,
          ParamType.DocumentReference,
        ),
        'Entitlements': serializeParam(
          _entitlements,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static UserEntitlementsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      UserEntitlementsStruct(
        user: deserializeParam(
          data['user'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        entitlements: deserializeParam<String>(
          data['Entitlements'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'UserEntitlementsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UserEntitlementsStruct &&
        user == other.user &&
        listEquality.equals(entitlements, other.entitlements);
  }

  @override
  int get hashCode => const ListEquality().hash([user, entitlements]);
}

UserEntitlementsStruct createUserEntitlementsStruct({
  DocumentReference? user,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserEntitlementsStruct(
      user: user,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserEntitlementsStruct? updateUserEntitlementsStruct(
  UserEntitlementsStruct? userEntitlements, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userEntitlements
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserEntitlementsStructData(
  Map<String, dynamic> firestoreData,
  UserEntitlementsStruct? userEntitlements,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userEntitlements == null) {
    return;
  }
  if (userEntitlements.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userEntitlements.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userEntitlementsData =
      getUserEntitlementsFirestoreData(userEntitlements, forFieldValue);
  final nestedData =
      userEntitlementsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = userEntitlements.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserEntitlementsFirestoreData(
  UserEntitlementsStruct? userEntitlements, [
  bool forFieldValue = false,
]) {
  if (userEntitlements == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userEntitlements.toMap());

  // Add any Firestore field values
  userEntitlements.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserEntitlementsListFirestoreData(
  List<UserEntitlementsStruct>? userEntitlementss,
) =>
    userEntitlementss
        ?.map((e) => getUserEntitlementsFirestoreData(e, true))
        .toList() ??
    [];
