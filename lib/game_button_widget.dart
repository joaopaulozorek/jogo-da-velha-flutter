import 'package:flutter/material.dart';

class GameButtonWidget extends StatelessWidget {
  final int id;
  final String text;
  final Color color;
  final Function onPressed;
  const GameButtonWidget({
    Key? key,
    required this.id,
    required this.text,
    required this.color,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.0,
      height: 100.0,
      child: MaterialButton(
        color: Colors.white10,
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: 20.0,
          ),
        ),
        onPressed: () => onPressed,
      ),
    );
  }
}
