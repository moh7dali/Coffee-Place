import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Details extends StatefulWidget {
  Details({
    this.img,
    this.title,
    this.sub,
    this.desc,
    required this.price,
    this.rate,
  });
  String? img;
  String? title;
  String? sub;
  double? rate;
  String? desc;
  double price;
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  Color fav = Colors.white;
  bool size_s = false;
  bool size_m = false;
  bool size_l = false;
  List Roast = [
    "Light Roasts",
    "Medium Roasts",
    "Medium-Dark Roasts",
    "Dark Roasts"
  ];
  String selected = "Medium Roasts";
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
            child: IconButton(
                onPressed: () {
                  setState(() {
                    fav = Colors.red;
                  });
                },
                icon: Icon(
                  Icons.favorite,
                  color: fav,
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(children: [
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage('${widget.img}'), fit: BoxFit.cover)),
              child: Text(""),
            ),
            Container(
              margin: EdgeInsets.only(top: 200, left: 10, right: 10),
              width: double.infinity,
              height: 190,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey.shade800.withOpacity(0.6),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
                child: Column(children: [
                  Text(
                    "${widget.title}",
                    style: GoogleFonts.bebasNeue(
                        fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: [
                      Text(
                        "${widget.sub}",
                        style: GoogleFonts.bebasNeue(fontSize: 20),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(8),
                          width: 180,
                          decoration: BoxDecoration(
                              color: Colors.black87,
                              borderRadius: BorderRadius.circular(20)),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              value: selected,
                              items: Roast.map((e) => DropdownMenuItem(
                                  value: e,
                                  child: Center(
                                    child: Text("${e}",
                                        style: GoogleFonts.bebasNeue(
                                            fontSize: 20)),
                                  ))).toList(),
                              onChanged: (value) {
                                setState(() {
                                  selected = value.toString();
                                });
                              },
                            ),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(children: [
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "${widget.rate}",
                      style: TextStyle(fontSize: 20),
                    )
                  ]),
                ]),
              ),
            )
          ]),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Description :",
                        style: GoogleFonts.bebasNeue(
                            fontSize: 30,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 10,
                    ),
                    Text("${widget.desc}",
                        style: GoogleFonts.farro(
                            fontSize: 15, letterSpacing: 1.2)),
                  ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Container(
              child: Text("Size :",
                  style: GoogleFonts.bebasNeue(
                      fontSize: 30,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          Row(children: [
            SizedBox(
              width: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  size_s = true;
                  size_m = false;
                  size_l = false;
                  widget.price += 1.0;
                });
              },
              child: Text("S",
                  style: GoogleFonts.bebasNeue(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              style: ElevatedButton.styleFrom(
                  primary: size_s ? Colors.orange : Colors.grey.shade700,
                  minimumSize: Size(100, 40),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              width: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  size_m = true;
                  size_s = false;
                  size_l = false;
                  widget.price += 2.0;
                });
              },
              child: Text("M",
                  style: GoogleFonts.bebasNeue(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              style: ElevatedButton.styleFrom(
                  primary: size_m ? Colors.orange : Colors.grey.shade700,
                  minimumSize: Size(100, 40),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              width: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  size_s = false;
                  size_l = true;
                  size_m = false;
                  widget.price += 3.0;
                });
              },
              child: Text("L",
                  style: GoogleFonts.bebasNeue(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              style: ElevatedButton.styleFrom(
                  primary: size_l ? Colors.orange : Colors.grey.shade700,
                  minimumSize: Size(100, 40),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ]),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(children: [
              Container(
                child: Column(children: [
                  Text(
                    "Price",
                    style: GoogleFonts.bebasNeue(
                        fontSize: 20,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(children: [
                    Icon(
                      Icons.money_off,
                      size: 30,
                      color: Colors.orange,
                    ),
                    Text(
                      "${widget.price}",
                      style: TextStyle(fontSize: 20),
                    )
                  ])
                ]),
              ),
              SizedBox(
                width: 14,
              ),
              Container(
                alignment: Alignment.center,
                width: 269,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(20)),
                child: Text("Buy Now",
                    style: GoogleFonts.bebasNeue(
                        fontSize: 30, fontWeight: FontWeight.bold)),
              )
            ]),
          )
        ]),
      ),
    );
  }
}
