import 'package:flutter/material.dart';
import 'package:inherited/counter_model.dart';
import 'package:scoped_model/scoped_model.dart';

class Class3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<CounterModel>(
      rebuildOnChange: true,
      builder: (context, _, model) => Text(
            "Class 3 : ${model.counts}",
            style: Theme.of(context).textTheme.headline,
          ),
    );
  }
}
