import 'package:flutter/cupertino.dart';
import 'package:rayan_app/basket.dart';
import 'main.dart';
import 'package:flutter/material.dart';
import 'data.dart';
import 'components/appBar.dart';

import 'package:flutter/material.dart' as widget;

class Hry extends StatefulWidget {
  @override
  _HryState createState() => _HryState();
}

class _HryState extends State<Hry> {
  int _group1 = 51;
  int _group2 = 52;
  int _group3 = 53;
  int _group4 = 54;
  String cuttingF, delievryF, sizeF;
  int priceNow = int.parse(products[1].price);
  Widget myRadioListTile1(int val, String txt) => RadioListTile(
        activeColor: Colors.white,
        value: val,
        groupValue: _group1,
        onChanged: (val) {
          setState(() {
            _group1 = val;
            if (val == 1) {
              priceNow = price[4];
              sizeF = size[4];
            } else if (val == 2) {
              priceNow = price[5];
              sizeF = size[5];
            } else if (val == 3) {
              priceNow = price[6];
              sizeF = size[6];
            }
            finalPrice = quantity * priceNow;
          });
        },
        title: Text(
          txt,
          style: TextStyle(color: Colors.white),
        ),
      );

  Widget myRadioListTile2(int val, String txt) => RadioListTile(
        activeColor: Colors.white,
        value: val,
        groupValue: _group2,
        onChanged: (val) {
          setState(() {
            _group2 = val;
            if (val == 4)
              cuttingF = cutting[1];
            else if (val == 5) cuttingF = cutting[2];
          });
        },
        title: Text(
          txt,
          style: TextStyle(color: Colors.white),
        ),
      );

  Widget myRadioListTile3(int val, String txt) => RadioListTile(
        activeColor: Colors.white,
        value: val,
        groupValue: _group3,
        onChanged: (val) {
          setState(() {
            _group3 = val;
            if (val == 6)
              delievryF = delievry[1];
            else if (val == 7) delievryF = delievry[2];
          });
        },
        title: Text(
          txt,
          style: TextStyle(color: Colors.white),
        ),
      );

  Widget myRadioListTile4(int val, String txt) => RadioListTile(
        activeColor: Colors.white,
        value: val,
        groupValue: _group4,
        onChanged: (val) {
          setState(() {
            _group4 = val;
          });
        },
        title: Text(
          txt,
          style: TextStyle(color: Colors.white),
        ),
      );

  @override
  int quantity = 1;
  int finalPrice = int.parse(products[1].price);
  Widget build(BuildContext context) => Scaffold(
      appBar: myAppBar(),
      body: ListView(
        children: [
          Card(
              color: Colors.lightBlue,
              child: Column(
                children: [
                  Image.asset(
                    products[1].photoPath,
                    width: 250,
                    height: 150,
                  ),
                  Text("عدد الذبائح",
                      style: TextStyle(color: Colors.white, fontSize: 35)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FloatingActionButton(
                          backgroundColor: Colors.white,
                          onPressed: () {
                            setState(() {
                              quantity += 1;
                              finalPrice = quantity * priceNow;
                            });
                          },
                          child:
                              widget.Icon(Icons.add, color: Colors.lightBlue)),
                      Container(
                        child: Text(
                          quantity.toString(),
                          style: TextStyle(fontSize: 35),
                        ),
                        color: Colors.white,
                      ),
                      FloatingActionButton(
                          backgroundColor: Colors.white,
                          onPressed: () {
                            setState(() {
                              if (quantity > 1) {
                                quantity -= 1;
                                finalPrice = quantity * priceNow;
                              }
                            });
                          },
                          child: widget.Icon(Icons.minimize_sharp,
                              color: Colors.lightBlue)),
                    ],
                  ),
                  Text("السعر النهائي : ${finalPrice}",
                      style: TextStyle(color: Colors.white, fontSize: 35)),
                ],
              )),
          Card(
            color: Colors.lightBlue,
            child: Column(
              children: [
                Text("الانواع",
                    style: TextStyle(color: Colors.white, fontSize: 35)),
                myRadioListTile1(1, size[4]),
                myRadioListTile1(2, size[5]),
                myRadioListTile1(3, size[6]),
              ],
            ),
          ),
          Card(
            color: Colors.lightBlue,
            child: Column(
              children: [
                Text("التقطيع",
                    style: TextStyle(color: Colors.white, fontSize: 35)),
                myRadioListTile2(4, cutting[1]),
                myRadioListTile2(5, cutting[2]),
              ],
            ),
          ),
          Card(
            color: Colors.lightBlue,
            child: Column(
              children: [
                Text("التجهيز",
                    style: TextStyle(color: Colors.white, fontSize: 35)),
                myRadioListTile3(6, delievry[1]),
                myRadioListTile3(7, delievry[2]),
              ],
            ),
          ),
          Card(
            color: Colors.lightBlue,
            child: Column(
              children: [
                Text("الرأس",
                    style: TextStyle(color: Colors.white, fontSize: 35)),
                myRadioListTile4(8, head[1]),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.lightBlue)),
                onPressed: () {
                  if ((_group1 == 1 || _group1 == 2 || _group1 == 3) &
                      (_group2 == 4 || _group2 == 5) &
                      (_group3 == 6 || _group3 == 7) &
                      (_group4 == 8)) {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext v) => ProjectApp(
                              selectedPage: 1,
                            )));
                  } else
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                              content: Container(
                                  child: Text(
                            "اكمل باقي البيانات رجاءا",
                            style: TextStyle(
                                fontSize: 20, color: Colors.lightBlue),
                            textAlign: TextAlign.center,
                          )));
                        });
                },
                child: Text("اطلب الان",
                    style: TextStyle(fontSize: 25, color: Colors.white))),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.lightBlue)),
                onPressed: () {
                  if ((_group1 == 1 || _group1 == 2 || _group1 == 3) &
                      (_group2 == 4 || _group2 == 5) &
                      (_group3 == 6 || _group3 == 7) &
                      (_group4 == 8)) {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext v) => FinalPage()));

                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                              content: Container(
                                  child: Text("تم الاضافة الي عربة التسوق",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.lightBlue),
                                      textAlign: TextAlign.center)));
                        });
                  } else
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                              content: Container(
                                  child: Text("اكمل باقي البيانات رجاءا",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.lightBlue),
                                      textAlign: TextAlign.center)));
                        });
                },
                child: Text("اضافة الي سلة المشتريات",
                    style: TextStyle(fontSize: 25, color: Colors.white))),
          ),
          SizedBox(height: 25),
        ],
      ));
}
