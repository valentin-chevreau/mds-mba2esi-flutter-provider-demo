import 'package:flutter/material.dart';

class ActionWidget extends StatefulWidget {
  final IconData iconData;
  final Function onTap;

  ActionWidget({@required this.iconData, @required this.onTap});

  @override
  _ActionWidgetState createState() => _ActionWidgetState();
}

class _ActionWidgetState extends State<ActionWidget> {
  Color _backgroundColor;

  @override
  void initState() {
    _backgroundColor = Colors.blue.withOpacity(0.8);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 48.0,
        width: 48.0,
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: _backgroundColor),
        child: Icon(widget.iconData, color: Colors.white),
      ),
      onTapDown: (_) {
        _setColor(isPressed: true);
      },
      onTapUp: (_) {
        _setColor();
        widget.onTap();
      },
      onTapCancel: () {
        _setColor();
      },
    );
  }

  _setColor({bool isPressed = false}) {
    setState(() {
      _backgroundColor = isPressed
          ? Colors.blue.withOpacity(0.4)
          : Colors.blue.withOpacity(0.8);
    });
  }
}
