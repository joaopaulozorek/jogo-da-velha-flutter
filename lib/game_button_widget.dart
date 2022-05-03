import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GameButtonWidget extends StatelessWidget {
  final int id;
  final String text;
  final Color color;
  final Function onPressed;

  const GameButtonWidget({
    Key? key,
    required this.id,
    required this.color,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  set text(String text) {
    this.text = text;
  }

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
          style: GoogleFonts.pressStart2p(
            textStyle: TextStyle(fontSize: 80),
          ),
        ),
        onPressed: () => onPressed,
      ),
    );
  }
}
