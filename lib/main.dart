// ignore_for_file: missing_return

import 'package:flutter/material.dart' as widget;
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'basket.dart';
import 'components/appBar.dart';
import 'components/drawer.dart';
import 'data.dart';
import 'listview.dart';
import 'aboutUs.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false, home: ProjectApp(selectedPage: 0)));
}

class ProjectApp extends StatelessWidget {
  int selectedPage;
  ProjectApp({this.selectedPage});

  bool ha = true;
  bool no = false;

  List<String> ImagePath = [
    "assets/allUp2.jpg",
    "assets/freshUp.jpg",
    "assets/unique.jpg",
    "assets/meat.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    bool ha = true;
    bool no = false;

    return DefaultTabController(
        initialIndex: selectedPage,
        length: 5,
        child: Scaffold(
          drawer: myDrawer(),
          backgroundColor: Colors.white,

//*******************************************************************************************************
          body: TabBarView(
            children: [
              ListView(children: [
                CarouselSlider(
                    items: ImagePath.map((imageUrl) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Image.asset(imageUrl, fit: BoxFit.fill),
                        width: double.infinity,
                      );
                    }).toList(),
                    options: CarouselOptions(
                      autoPlay: true,
                      height: 500,
                    )),
                Image.asset("assets/steps.jpg")
              ]),
              ListView(children: [
                SizedBox(height: 25),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        color: Color(0xFF03A9F4),
                        child: Text("ملخص الطلب",
                            style:
                                TextStyle(fontSize: 25, color: Colors.white)),
                      ),
                    ]),
                Visibility(
                  visible: ha,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Card(
                        color: Colors.lightBlue,
                        child: Container(
                          height: 125,
                          width: 225,
                          child: Column(
                            children: [
                              Text(
                                "data",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              Text(
                                "السعر: ${1250}",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              Text(
                                "الكمية: ${1}",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              Text(
                                "السعر الاجمالي: ${1250}",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                      Image.asset(
                        products[0].photoPath,
                        height: 225,
                        width: 150,
                      )
                    ],
                  ),
                ),
                Visibility(
                  visible: ha,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Card(
                        color: Colors.lightBlue,
                        child: Container(
                          height: 125,
                          width: 225,
                          child: Column(
                            children: [
                              Text(
                                "data",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              Text(
                                "السعر: ${1250}",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              Text(
                                "الكمية: ${1}",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              Text(
                                "السعر الاجمالي: ${1250}",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                      Image.asset(
                        products[1].photoPath,
                        height: 225,
                        width: 150,
                      )
                    ],
                  ),
                ),
                Center(
                  child: TextButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.lightBlue)),
                      onPressed: () {},
                      child: Text("اطلب الان",
                          style: TextStyle(fontSize: 25, color: Colors.white))),
                ),
              ]),
              ListView(
                  children: [Image.asset("assets/accounts.jpg"), Divider()]),
              ListView(children: [Image.asset("assets/shot.jpg"), Divider()]),
              ListViewPage()
            ],
          ),

//*********************************************************************************************************
          appBar: myAppBar(),
//*********************************************************************************************************
          bottomNavigationBar: BottomAppBar(
              color: Colors.lightBlue,
              child: TabBar(
                isScrollable: false,
                tabs: [
                  Tab(
                    text: "الرئيسية",
                    icon: widget.Icon(Icons.home),
                  ),
                  Tab(
                    text: "عربة التسوق",
                    icon: widget.Icon(Icons.add_shopping_cart),
                  ),
                  Tab(
                    text: "حسابتنا البنكية",
                    icon: widget.Icon(Icons.account_balance),
                  ),
                  Tab(
                    text: "تواصل معنا",
                    icon: widget.Icon(Icons.connect_without_contact),
                  ),
                  Tab(
                      text: "جميع منتجاتنا",
                      icon: widget.Icon(Icons.shop_2_sharp)),
                ],
              )),
        ));
  }
}



/*

  Map<String, dynamic> sent = {};




carousel_slider: ^4.1.1
  CarouselSlider(
      items: ImagePath.map((imageUrl) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Image.asset(imageUrl, fit: BoxFit.fill),
          width: double.infinity,
        );
      }).toList(),
      options: CarouselOptions(
        autoPlay: true,
        height: 500,
      ))

 Order orderObject = new Order();

  static bool checkNoeme() {
    for (int i = 0; i < orderObject.orders.length; i++)
      if (orderObject.orders[i].name == "نعيمي" &&
          orderObject.orders[i].amount >= 1) {
        return true;
      } else {
        return false;
      }
  }

  static bool checkHry() {
    for (int i = 0; i < orderObject.orders.length; i++)
      if (orderObject.orders[i].name == "حري" &&
          orderObject.orders[i].amount >= 1)
        return true;
      else
        return false;
  }


*/