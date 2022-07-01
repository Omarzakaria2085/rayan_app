import 'package:flutter/cupertino.dart';
import 'package:rayan_app/main.dart';
import 'package:flutter/material.dart';
import '../aboutUs.dart';

class myDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Drawer(
        child: Container(
            color: Colors.white,
            child: ListView(
              children: [
                SizedBox(height: 48),
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext v) =>
                            ProjectApp(selectedPage: 0)));
                  },
                  trailing: Icon(Icons.home),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("الرئيسية"),
                    ],
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext v) => aboutUs()));
                  },
                  trailing: Icon(Icons.help),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("من نحن"),
                    ],
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext v) =>
                            ProjectApp(selectedPage: 1)));
                  },
                  trailing: Icon(Icons.add_shopping_cart),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("عربة التسوق"),
                    ],
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext v) =>
                            ProjectApp(selectedPage: 2)));
                  },
                  trailing: Icon(Icons.account_balance),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("حساباتنا البنكية"),
                    ],
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext v) =>
                            ProjectApp(selectedPage: 3)));
                  },
                  trailing: Icon(Icons.connect_without_contact),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("تواصل معنا"),
                    ],
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext v) =>
                            ProjectApp(selectedPage: 4)));
                  },
                  trailing: Icon(Icons.shop_2_sharp),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("جميع منتجاتنا"),
                    ],
                  ),
                ),
              ],
            )),
      );
}
/*
Widget myDrawer() => Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              SizedBox(height: 48),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext v) => ProjectApp(0)));
                },
                trailing: Icon(Icons.home),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("الرئيسية"),
                  ],
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext v) => aboutUs()));
                },
                trailing: Icon(Icons.help),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("من نحن"),
                  ],
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext v) => ProjectApp(1)));
                },
                trailing: Icon(Icons.add_shopping_cart),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("سلة المشتريات"),
                  ],
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext v) => ProjectApp(2)));
                },
                trailing: Icon(Icons.account_balance),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("حساباتنا البنكية"),
                  ],
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext v) => ProjectApp(3)));
                },
                trailing: Icon(Icons.connect_without_contact),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("تواصل معنا"),
                  ],
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext v) => ProjectApp(4)));
                },
                trailing: Icon(Icons.shop_2_sharp),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("جميع منتجاتنا"),
                  ],
                ),
              ),
            ],
          )),
    );
*/