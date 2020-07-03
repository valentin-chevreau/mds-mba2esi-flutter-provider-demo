import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/provider/counter_holder.dart';

import 'action_widget.dart';

class AddRemoveWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterHolder counterHolder =
        Provider.of<CounterHolder>(context, listen: false);

    return Container(
      decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.1),
          borderRadius: BorderRadius.all(Radius.circular(8.0))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ActionWidget(
                iconData: Icons.remove,
                onTap: () {
                  counterHolder.value = counterHolder.value - 1;
                }),
            Container(width: 12.0),
            ActionWidget(
                iconData: Icons.add,
                onTap: () {
                  counterHolder.value = counterHolder.value + 1;
                }),
          ],
        ),
      ),
    );
  }

  _removeTap() {
    print('removeTapped');
  }

  _addTap() {
    print('addTapped');
  }
}
