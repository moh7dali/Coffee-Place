import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

late Uri _url;

class Contact_widget extends StatefulWidget {
  Contact_widget({this.name, this.subtitle, this.color, this.icon, this.url});
  String? name;
  String? subtitle;
  Color? color;
  IconData? icon;
  String? url;

  @override
  State<Contact_widget> createState() => _Contact_widgetState();
}

class _Contact_widgetState extends State<Contact_widget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _url = Uri.parse('${widget.url}');
        Open();
      },
      child: Container(
        color: widget.color,
        child: ListTile(
          title: Text("${widget.name}"),
          subtitle: Text("${widget.subtitle}"),
          leading: Icon(
            widget.icon,
            size: 30,
          ),
        ),
      ),
    );
  }
}

Future<void> Open() async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}
