// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChartValuesStruct extends FFFirebaseStruct {
  ChartValuesStruct({
    String? label,
    double? value,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _label = label,
        _value = value,
        super(firestoreUtilData);

  // "label" field.
  String? _label;
  String get label => _label ?? '';
  set label(String? val) => _label = val;

  bool hasLabel() => _label != null;

  // "value" field.
  double? _value;
  double get value => _value ?? 0.0;
  set value(double? val) => _value = val;

  void incrementValue(double amount) => value = value + amount;

  bool hasValue() => _value != null;

  static ChartValuesStruct fromMap(Map<String, dynamic> data) =>
      ChartValuesStruct(
        label: data['label'] as String?,
        value: castToType<double>(data['value']),
      );

  static ChartValuesStruct? maybeFromMap(dynamic data) => data is Map
      ? ChartValuesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'label': _label,
        'value': _value,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'label': serializeParam(
          _label,
          ParamType.String,
        ),
        'value': serializeParam(
          _value,
          ParamType.double,
        ),
      }.withoutNulls;

  static ChartValuesStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChartValuesStruct(
        label: deserializeParam(
          data['label'],
          ParamType.String,
          false,
        ),
        value: deserializeParam(
          data['value'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ChartValuesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChartValuesStruct &&
        label == other.label &&
        value == other.value;
  }

  @override
  int get hashCode => const ListEquality().hash([label, value]);
}

ChartValuesStruct createChartValuesStruct({
  String? label,
  double? value,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ChartValuesStruct(
      label: label,
      value: value,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ChartValuesStruct? updateChartValuesStruct(
  ChartValuesStruct? chartValues, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    chartValues
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addChartValuesStructData(
  Map<String, dynamic> firestoreData,
  ChartValuesStruct? chartValues,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (chartValues == null) {
    return;
  }
  if (chartValues.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && chartValues.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final chartValuesData =
      getChartValuesFirestoreData(chartValues, forFieldValue);
  final nestedData =
      chartValuesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = chartValues.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getChartValuesFirestoreData(
  ChartValuesStruct? chartValues, [
  bool forFieldValue = false,
]) {
  if (chartValues == null) {
    return {};
  }
  final firestoreData = mapToFirestore(chartValues.toMap());

  // Add any Firestore field values
  chartValues.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getChartValuesListFirestoreData(
  List<ChartValuesStruct>? chartValuess,
) =>
    chartValuess?.map((e) => getChartValuesFirestoreData(e, true)).toList() ??
    [];
