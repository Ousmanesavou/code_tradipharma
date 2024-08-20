import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _takephoto = false;
  bool get takephoto => _takephoto;
  set takephoto(bool value) {
    _takephoto = value;
  }

  String _filebase = '';
  String get filebase => _filebase;
  set filebase(String value) {
    _filebase = value;
  }

  bool _firebase = false;
  bool get firebase => _firebase;
  set firebase(bool value) {
    _firebase = value;
  }
}
