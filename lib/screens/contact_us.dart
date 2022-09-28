import 'package:coffee/components/contact_widget.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Contact_us extends StatefulWidget {
  const Contact_us({super.key});

  @override
  State<Contact_us> createState() => _Contact_usState();
}

class _Contact_usState extends State<Contact_us> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Contact_widget(
            name: "FaceBook",
            subtitle: "follow Us",
            color: Colors.blue,
            icon: Ionicons.logo_facebook,
            url: "https://web.facebook.com/mohmmad.sasa/",
          ),
          SizedBox(
            height: 20,
          ),
          Contact_widget(
            name: "Instgram",
            subtitle: "follow Us",
            color: Colors.pink.shade400,
            icon: Ionicons.logo_instagram,
            url: "https://www.instagram.com/nextstep.jo/?hl=bn",
          ),
          SizedBox(
            height: 20,
          ),
          Contact_widget(
            name: "Whatsapp",
            subtitle: "follow Us",
            color: Colors.green,
            icon: Ionicons.logo_whatsapp,
            url: "https://web.whatsapp.com/",
          ),
        ],
      ),
    );
  }
}
