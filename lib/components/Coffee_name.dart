import 'package:flutter/material.dart';

class Coffee_name extends StatelessWidget {
  Coffee_name({this.img, this.name, this.sub, this.price, this.fun});
  String? img;
  String? name;
  String? sub;
  int? price;
  Function()? fun;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: fun,
      child: Padding(
        padding: const EdgeInsets.only(left: 12, bottom: 20, right: 12),
        child: Container(
          padding: EdgeInsets.all(20),
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Color.fromARGB(255, 47, 47, 47),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.network(
                    '${img}',
                    width: double.infinity,
                  )),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${name}",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${sub}",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$${price}",
                      style: TextStyle(fontSize: 25),
                    ),
                    Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.orange),
                        child: Icon(Icons.add))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
