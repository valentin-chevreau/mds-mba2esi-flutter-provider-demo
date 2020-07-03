import 'package:flutter/material.dart';
import 'package:provider_demo/home/widget/add_remove_widget.dart';
import 'package:provider_demo/home/widget/counter_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Demo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Spacer(
            flex: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.width / 2,
                width: MediaQuery.of(context).size.width / 2,
                child: CounterWidget(),
              ),
            ],
          ),
          Spacer(),
          AddRemoveWidget(),
          Spacer(),
        ],
      ),
    );
  }
}
