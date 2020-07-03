import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/provider/counter_holder.dart';

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  @override
  Widget build(BuildContext context) {
    CounterHolder counterHolder = Provider.of<CounterHolder>(context);

    int value = counterHolder.value;

    return Container(
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.1),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      child: Center(
        child: Text(
          '$value',
          style: TextStyle(
            fontSize: 68.0,
            fontWeight: FontWeight.w700,
            color: Colors.black38,
          ),
        ),
      ),
    );
  }
}
