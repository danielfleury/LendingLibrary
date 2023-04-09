import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _lenderorborrower =
        prefs.getString('ff_lenderorborrower') ?? _lenderorborrower;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  DocumentReference? _focusedequipmentrecord =
      FirebaseFirestore.instance.doc('/EquipmentRecords/NSbC67h7kJeLn3uIL02F');
  DocumentReference? get focusedequipmentrecord => _focusedequipmentrecord;
  set focusedequipmentrecord(DocumentReference? _value) {
    _focusedequipmentrecord = _value;
  }

  String _lenderorborrower = 'null';
  String get lenderorborrower => _lenderorborrower;
  set lenderorborrower(String _value) {
    _lenderorborrower = _value;
    prefs.setString('ff_lenderorborrower', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
