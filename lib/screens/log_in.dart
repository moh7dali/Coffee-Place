import 'package:coffee/components/inputbar.dart';
import 'package:coffee/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class Log_in extends StatefulWidget {
  const Log_in({super.key});

  @override
  State<Log_in> createState() => _Log_inState();
}

class _Log_inState extends State<Log_in> {
  String em = "user@user.com";
  String pass = "12345";
  String re_em = "";
  String re_pa = "";
  bool vis = false;
  TextEditingController gettxt_email = new TextEditingController();
  TextEditingController gettxt_pass = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login page")),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 25,
          ),
          CircleAvatar(
            radius: 100, // Image radius
            backgroundImage: NetworkImage(
                'https://image.freepik.com/free-vector/coffee-shop-badge-vintage-style_1176-95.jpg'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: TextField(
              controller: gettxt_email,
              decoration: InputDecoration(
                hintText: 'Enter Your Email',
                prefixIcon: Icon(Ionicons.mail),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600)),
                label: Text(
                  "Email",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: TextField(
              controller: gettxt_pass,
              decoration: InputDecoration(
                hintText: 'Enter Your Password',
                prefixIcon: Icon(Icons.lock),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600)),
                label: Text(
                  "Password",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              obscureText: true,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    re_em = gettxt_email.text;
                    re_pa = gettxt_pass.text;
                    if (re_em == em && re_pa == pass) {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Home();
                        },
                      ));
                    } else
                      vis = true;
                  });
                },
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                    "Login",
                    style: GoogleFonts.bebasNeue(fontSize: 30),
                  ),
                )),
          ),
          Visibility(
            child: Text(
              "Wrong Email or Password",
              style: GoogleFonts.bebasNeue(fontSize: 30, color: Colors.red),
            ),
            visible: vis,
          ),
        ]),
      ),
    );
  }
}
