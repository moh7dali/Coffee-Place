import 'package:coffee/screens/items.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/coffee_items.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.person),
          )
        ],
      ),
      drawer: Drawer(),
      body: Column(children: [
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Text(
            "FIND THE BEST COFFEE FOR YOU",
            style: GoogleFonts.bebasNeue(fontSize: 50),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Find your coffee',
                prefixIcon: Icon(Icons.search),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600))),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Expanded(
          child: ListView(children: [
            ShowItems(
              img:
                  "https://cdn.dribbble.com/users/4914529/screenshots/10966916/shot-cropped-1586243328019.png",
              name: "Latte   ",
              fun: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Items(
                        id: 1,
                      );
                    },
                  ));
                });
              },
            ),
            ShowItems(
              img:
                  "https://previews.123rf.com/images/mykub/mykub1702/mykub170200237/72783634-%C3%A9tiquette-de-vecteur-de-caf%C3%A9-vintage-et-logo-cappuccino-et-logo-espresso-vecteur-de-caf%C3%A9.jpg",
              name: "cappuccino",
              fun: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Items(
                        id: 2,
                      );
                    },
                  ));
                });
              },
            ),
            ShowItems(
              img:
                  "https://previews.123rf.com/images/foontntd/foontntd1906/foontntd190600073/124446853-mod%C3%A8le-graphique-d-ic%C3%B4ne-de-logo-de-th%C3%A9-%C3%A0-bulles.jpg",
              name: "Tea",
              fun: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Items(
                        id: 3,
                      );
                    },
                  ));
                });
              },
            ),
          ]),
        ),
      ]),
    );
  }
}
