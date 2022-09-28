import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Coffee_type extends StatelessWidget {
  Coffee_type({this.type});
  String? type;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Text(
        "${type}",
        style: GoogleFonts.combo(
          fontSize: 16,
          color: Colors.orange,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
