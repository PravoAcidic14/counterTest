import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

class CounterBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    if (kDebugMode) {
      print(change.toString());
    }
    super.onChange(bloc, change);
  }
}
