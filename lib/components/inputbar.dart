import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  Input({this.hint, this.label, this.icon});
  String? hint;
  String? label;
  IconData? icon;
  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  TextEditingController gettxt = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      child: TextField(
        controller: gettxt,
        decoration: InputDecoration(
          hintText: '${widget.hint}',
          prefixIcon: Icon(widget.icon),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600)),
          label: Text(
            "${widget.label}",
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}
