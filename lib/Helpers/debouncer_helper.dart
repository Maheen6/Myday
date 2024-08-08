import 'dart:async';
import 'package:flutter/foundation.dart';

class Debouncer {
  Debouncer({this.milliseconds});

  final int? milliseconds;
  Timer? _timer;

  void run(VoidCallback action) {
    if (_timer?.isActive ?? false) {
      _timer?.cancel();
    }
    _timer = Timer(Duration(milliseconds: milliseconds??500), action);
  }
}