import 'package:flutter/material.dart';

class ShowItems extends StatelessWidget {
  ShowItems({this.img, this.name, required this.fun});
  String? img;
  String? name;
  Function() fun;
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.network(
                        '${img}',
                        width: double.infinity,
                      )),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${name}",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ])),
      ),
    );
  }
}
