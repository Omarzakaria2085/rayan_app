import 'package:flutter/material.dart';
import 'dart:convert';
import 'components/appBar.dart';
import 'components/drawer.dart';
import 'data.dart';
import 'listview.dart';

import 'package:flutter/material.dart' as widget;
import 'aboutUs.dart';

class FinalPage extends StatelessWidget {
  var customerName = TextEditingController();
  var customerCity = TextEditingController();
  var customerPhone = TextEditingController();
  var customerLocation = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: myAppBar(),
      body: ListView(
        children: [
          Card(
              child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Container(
                  color: Colors.lightBlue,
                  child: Text("ملخص الطلب",
                      style: TextStyle(fontSize: 25, color: Colors.white)),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: Text("تعديل",
                      style: TextStyle(fontSize: 15, color: Colors.white)),
                ),
              ]),
              Row(
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
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            "السعر: ${1250}",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            "الكمية: ${1}",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            "السعر الاجمالي: ${1250}",
                            style: TextStyle(color: Colors.white, fontSize: 20),
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
              Row(
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
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            "السعر: ${1250}",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            "الكمية: ${1}",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            "السعر الاجمالي: ${1250}",
                            style: TextStyle(color: Colors.white, fontSize: 20),
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
              Card(
                color: Colors.lightBlue,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Colors.white,
                      child: Text("ملخص الطلب",
                          style:
                              TextStyle(fontSize: 20, color: Colors.lightBlue)),
                    ),
                    Text(
                      "قم بادخال المعلومات التالية",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      "حتي نتمكن من التواصل معك وتأكيد طلبك",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    textRow(": الاسم",
                        widget.Icon(Icons.person, color: Colors.white)),
                    textField(customerName, "اكتب اسمك هنا"),
                    textRow(": المدينة",
                        widget.Icon(Icons.location_city, color: Colors.white)),
                    textField(customerCity, "اكتب مدينتك هنا"),
                    textRow(": العنوان",
                        widget.Icon(Icons.person, color: Colors.white)),
                    textField(customerPhone, "اكتب عنوانك هنا"),
                    textRow(": رقم الجوال",
                        widget.Icon(Icons.person, color: Colors.white)),
                    textField(customerLocation, "اكتب رقم جوالك هنا"),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        color: Colors.white,
                        child: TextButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                      content: Container(
                                          child: Text(
                                    "تم ارسال طلبك",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.lightBlue),
                                    textAlign: TextAlign.center,
                                  )));
                                });
                          },
                          child: Text("تأكيد الطلب",
                              style: TextStyle(
                                  fontSize: 25, color: Colors.lightBlue)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
          SizedBox(height: 25),
        ],
      ));
}

//    ": الاسم"         Icon(Icons.person, color: Colors.white)
//   "اكتب اسمك هنا"
Widget textRow(String txt, Widget alIcona) => Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(txt, style: TextStyle(fontSize: 20, color: Colors.white)),
        alIcona,
        SizedBox(
          width: 30,
        )
      ],
    );
Widget textField(var customerName, String hint) => TextFormField(
    style: TextStyle(color: Colors.lightBlue),
    controller: customerName,
    textAlign: TextAlign.end,
    keyboardType: TextInputType.emailAddress,
    obscureText: false,
    decoration: InputDecoration(
      filled: true,
      focusColor: Colors.white,
      fillColor: Colors.white,
      hintText: hint,
      border: OutlineInputBorder(),
    ));
