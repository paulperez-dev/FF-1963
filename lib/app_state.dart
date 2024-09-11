import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import 'backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _Liked = prefs.getBool('ff_Liked') ?? _Liked;
    });
    _safeInit(() {
      _xAxis = prefs.getStringList('ff_xAxis') ?? _xAxis;
    });
    _safeInit(() {
      _yAxis =
          prefs.getStringList('ff_yAxis')?.map(double.parse).toList() ?? _yAxis;
    });
    _safeInit(() {
      _chartValueType = prefs
              .getStringList('ff_chartValueType')
              ?.map((x) {
                try {
                  return ChartValuesStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _chartValueType;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _Liked = false;
  bool get Liked => _Liked;
  set Liked(bool value) {
    _Liked = value;
    prefs.setBool('ff_Liked', value);
  }

  List<String> _xAxis = ['P1', 'P2', 'P3', 'P4', 'P5', 'P6', 'P7'];
  List<String> get xAxis => _xAxis;
  set xAxis(List<String> value) {
    _xAxis = value;
    prefs.setStringList('ff_xAxis', value);
  }

  void addToXAxis(String value) {
    xAxis.add(value);
    prefs.setStringList('ff_xAxis', _xAxis);
  }

  void removeFromXAxis(String value) {
    xAxis.remove(value);
    prefs.setStringList('ff_xAxis', _xAxis);
  }

  void removeAtIndexFromXAxis(int index) {
    xAxis.removeAt(index);
    prefs.setStringList('ff_xAxis', _xAxis);
  }

  void updateXAxisAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    xAxis[index] = updateFn(_xAxis[index]);
    prefs.setStringList('ff_xAxis', _xAxis);
  }

  void insertAtIndexInXAxis(int index, String value) {
    xAxis.insert(index, value);
    prefs.setStringList('ff_xAxis', _xAxis);
  }

  List<double> _yAxis = [50.0, 100.0, 150.0, 200.0, 250.0, 300.0, 350.0];
  List<double> get yAxis => _yAxis;
  set yAxis(List<double> value) {
    _yAxis = value;
    prefs.setStringList('ff_yAxis', value.map((x) => x.toString()).toList());
  }

  void addToYAxis(double value) {
    yAxis.add(value);
    prefs.setStringList('ff_yAxis', _yAxis.map((x) => x.toString()).toList());
  }

  void removeFromYAxis(double value) {
    yAxis.remove(value);
    prefs.setStringList('ff_yAxis', _yAxis.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromYAxis(int index) {
    yAxis.removeAt(index);
    prefs.setStringList('ff_yAxis', _yAxis.map((x) => x.toString()).toList());
  }

  void updateYAxisAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    yAxis[index] = updateFn(_yAxis[index]);
    prefs.setStringList('ff_yAxis', _yAxis.map((x) => x.toString()).toList());
  }

  void insertAtIndexInYAxis(int index, double value) {
    yAxis.insert(index, value);
    prefs.setStringList('ff_yAxis', _yAxis.map((x) => x.toString()).toList());
  }

  List<ChartValuesStruct> _chartValueType = [
    ChartValuesStruct.fromSerializableMap(
        jsonDecode('{\"label\":\"P1\",\"value\":\"50\"}')),
    ChartValuesStruct.fromSerializableMap(
        jsonDecode('{\"label\":\"P2\",\"value\":\"100\"}')),
    ChartValuesStruct.fromSerializableMap(
        jsonDecode('{\"label\":\"P3\",\"value\":\"150\"}')),
    ChartValuesStruct.fromSerializableMap(
        jsonDecode('{\"label\":\"P4\",\"value\":\"200\"}')),
    ChartValuesStruct.fromSerializableMap(
        jsonDecode('{\"label\":\"P5\",\"value\":\"250\"}')),
    ChartValuesStruct.fromSerializableMap(
        jsonDecode('{\"label\":\"P6\",\"value\":\"300\"}')),
    ChartValuesStruct.fromSerializableMap(
        jsonDecode('{\"label\":\"P7\",\"value\":\"350\"}'))
  ];
  List<ChartValuesStruct> get chartValueType => _chartValueType;
  set chartValueType(List<ChartValuesStruct> value) {
    _chartValueType = value;
    prefs.setStringList(
        'ff_chartValueType', value.map((x) => x.serialize()).toList());
  }

  void addToChartValueType(ChartValuesStruct value) {
    chartValueType.add(value);
    prefs.setStringList('ff_chartValueType',
        _chartValueType.map((x) => x.serialize()).toList());
  }

  void removeFromChartValueType(ChartValuesStruct value) {
    chartValueType.remove(value);
    prefs.setStringList('ff_chartValueType',
        _chartValueType.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromChartValueType(int index) {
    chartValueType.removeAt(index);
    prefs.setStringList('ff_chartValueType',
        _chartValueType.map((x) => x.serialize()).toList());
  }

  void updateChartValueTypeAtIndex(
    int index,
    ChartValuesStruct Function(ChartValuesStruct) updateFn,
  ) {
    chartValueType[index] = updateFn(_chartValueType[index]);
    prefs.setStringList('ff_chartValueType',
        _chartValueType.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInChartValueType(int index, ChartValuesStruct value) {
    chartValueType.insert(index, value);
    prefs.setStringList('ff_chartValueType',
        _chartValueType.map((x) => x.serialize()).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
