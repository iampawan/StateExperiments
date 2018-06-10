import 'package:flutter/material.dart';
import 'package:inherited/mycounter.dart';

class CountProvider extends InheritedWidget {
  final MyCounter myCounter;
  final Widget child;
  CountProvider({this.myCounter, this.child}) : super(child: child);

  static CountProvider of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(CountProvider);
  @override
  bool updateShouldNotify(CountProvider oldWidget) {
    return myCounter != oldWidget.myCounter;
  }
}
