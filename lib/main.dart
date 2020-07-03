import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/page/home/home_page.dart';
import 'package:provider_demo/provider/counter_holder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterHolder(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
