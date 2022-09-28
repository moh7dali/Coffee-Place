import 'package:coffee/components/Coffee_name.dart';
import 'package:coffee/components/coffee_title.dart';
import 'package:coffee/screens/contact_us.dart';
import 'package:coffee/screens/details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class Items extends StatefulWidget {
  Items({required this.id});
  int? id;
  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
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
            bottom: TabBar(
              indicatorColor: Colors.orange,
              tabs: [
                Tab(
                  child: Coffee_type(type: "Latte"),
                ),
                Tab(
                  child: Coffee_type(type: "Cappuccino"),
                ),
                Tab(
                  child: Coffee_type(type: "Tea"),
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            Expanded(
              child: ListView(children: [
                Coffee_name(
                    img:
                        "https://aboveaveragecoffee.com/wp-content/uploads/2020/05/Is-A-Latte-Coffee.jpg",
                    name: "Latte   ",
                    sub: "With Milk",
                    price: 5,
                    fun: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Details(
                            img:
                                "https://aboveaveragecoffee.com/wp-content/uploads/2020/05/Is-A-Latte-Coffee.jpg",
                            title: "Latte ",
                            sub: "With Milk",
                            price: 5,
                            rate: 4.3,
                            desc: "Hot latte with milk",
                          );
                        },
                      ));
                    }),
                Coffee_name(
                  img:
                      "http://cdn.shopify.com/s/files/1/0435/8216/1057/articles/20220124155542-iced-20coffee-202.jpg?v=1643040566",
                  name: "Iced Latte",
                  sub: "With Foam",
                  price: 4,
                  fun: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Details(
                          img:
                              "http://cdn.shopify.com/s/files/1/0435/8216/1057/articles/20220124155542-iced-20coffee-202.jpg?v=1643040566",
                          title: "Iced Latte",
                          price: 4,
                          desc: "Iced latte with foam",
                          rate: 4.2,
                          sub: "with foam",
                        );
                      },
                    ));
                  },
                ),
              ]),
            ),
            Expanded(
              child: ListView(children: [
                Coffee_name(
                  img:
                      "https://www.acouplecooks.com/wp-content/uploads/2020/10/how-to-make-cappuccino-005.jpg",
                  name: "Cappuccino",
                  sub: "With Milk",
                  price: 5,
                  fun: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Details(
                          img:
                              "https://www.acouplecooks.com/wp-content/uploads/2020/10/how-to-make-cappuccino-005.jpg",
                          desc: "Cappuccino With Milk",
                          price: 5,
                          rate: 4.4,
                          sub: "With Milk",
                          title: "Cappuccino",
                        );
                      },
                    ));
                  },
                ),
                Coffee_name(
                  img:
                      "https://midwestniceblog.com/wp-content/uploads/2021/04/salted-caramel-cold-foam-cold-brew-coffee-recipe-scaled.jpg",
                  name: "Iced Cappuccino",
                  sub: "With Foam",
                  price: 4,
                  fun: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Details(
                          img:
                              "https://midwestniceblog.com/wp-content/uploads/2021/04/salted-caramel-cold-foam-cold-brew-coffee-recipe-scaled.jpg",
                          title: "Iced Cappuccino",
                          desc: "Iced Cappuccino With Foam",
                          price: 4,
                          rate: 4.1,
                          sub: "with foam",
                        );
                      },
                    ));
                  },
                ),
              ]),
            ),
            Expanded(
              child: ListView(children: [
                Coffee_name(
                  img:
                      "https://images.immediate.co.uk/production/volatile/sites/30/2022/06/Bubble-Tea-81ba83b.png?resize=768,574",
                  name: "Coffee Tea",
                  sub: "With Bubble",
                  price: 5,
                  fun: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Details(
                          img:
                              "https://images.immediate.co.uk/production/volatile/sites/30/2022/06/Bubble-Tea-81ba83b.png?resize=768,574",
                          desc: "Coffe Tea with Bubble",
                          price: 5,
                          rate: 4.5,
                          sub: "With Bubbles",
                          title: "Coffee Tea",
                        );
                      },
                    ));
                  },
                ),
                Coffee_name(
                  img:
                      "https://www.honestfoodtalks.com/wp-content/uploads/2022/02/Matcha-milk-tea-recipe-with-ice-and-boba.jpg",
                  name: "Matcha Milk Tea",
                  sub: "With Bubble",
                  price: 4,
                  fun: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Details(
                          img:
                              "https://www.honestfoodtalks.com/wp-content/uploads/2022/02/Matcha-milk-tea-recipe-with-ice-and-boba.jpg",
                          title: "Matcha Milk Tea",
                          desc: "Matcha Milk Tea With Bubble",
                          price: 4,
                          rate: 4.6,
                          sub: "With Bubbles",
                        );
                      },
                    ));
                  },
                ),
                Coffee_name(
                  img:
                      "https://cdnimg.webstaurantstore.com/images/products/514568/1908314.jpg",
                  name: "Blueberry Bubble Tea",
                  sub: "With Fruits",
                  price: 7,
                  fun: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Details(
                          img:
                              "https://cdnimg.webstaurantstore.com/images/products/514568/1908314.jpg",
                          desc: "Blueberry Bubble Tea With Fruits",
                          price: 7,
                          rate: 4.9,
                          sub: "With Fruits",
                          title: "Blueberry Bubble Tea",
                        );
                      },
                    ));
                  },
                ),
              ]),
            ),
          ]),
          bottomNavigationBar:
              BottomNavigationBar(fixedColor: Colors.orange, items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Ionicons.call),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Contact_us();
                    },
                  ));
                },
              ),
              label: '',
            ),
          ]),
        ));
  }
}
