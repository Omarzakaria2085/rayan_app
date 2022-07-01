import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Product {
  String name, price, photoPath;
  Product({this.name, this.price, this.photoPath});
}

/*
Future<dynamic> createAlbum(String title) async {
  final url = 'https://jsonplaceholder.typicode.com/albums';
  final res = await http.post(Uri.parse(url), body: jsonEncode(sent));
  if (res.statusCode == 200) {
    var obj = json.decode(res.body);
    return obj;
  } else
    throw Exception("Error");
}
*/

//      fetch              Icon iconFromJson(String str) => Icon.fromJson(json.decode(str));

//      post               String iconToJson(Icon data) => json.encode(data.toJson());
class View {
  View({
    this.itemId,
    this.salesPrice,
    this.itemName,
    this.imageName,
  });

  String itemId;
  String salesPrice;
  String itemName;
  String imageName;

  factory View.fromJson(Map<String, dynamic> json) => View(
        itemId: json["itemId"],
        salesPrice: json["salesPrice"],
        itemName: json["itemName"],
        imageName: json["imageName"],
      );

  Map<String, dynamic> toJson() => {
        "itemId": itemId,
        "salesPrice": salesPrice,
        "itemName": itemName,
        "imageName": imageName,
      };
}

/*
class Icon {
  int itemId;
  int salesPrice;
  int itemName;
  String imageName;

  Icon({this.itemId, this.itemName, this.imageName, this.salesPrice});

  Icon.fromJson(Map<String, dynamic> map) {
    this.imageName = map["imageName"];
    this.itemId = map["imageName"];
    this.salesPrice = map["salesPrice"];
    this.itemName = map[""];
  }
}


  Future<dynamic> createAlbum(String title) async {
    final url = 'https://jsonplaceholder.typicode.com/albums';
    final res = await http.post(Uri.parse(url), body: jsonEncode(sent));
    if (res.statusCode == 200) {
      var obj = json.decode(res.body);
      return obj;
    } else
      throw Exception("Error");
  }

  Future <List<Album>> fetchAlbum() async {
    final url = 'https://jsonplaceholder.typicode.com/albums';
    final res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var obj = json.decode(res.body);
      List <Album> albums = [];
      return obj;
    } else
      throw Exception("Error");
  }
class Icon {

  int itemId;
  int salesPrice;
  int itemName;
  String imageName;

  Icon({
    this.itemId,
    this.itemName,
    this.imageName
    ,
    this.salesPrice
  });

    Icon.fromJson(Map<String, dynamic> map) {
      this.imageName : map["imageName"];
      this.itemId : map["imageName"];
      this.salesPrice:map["salesPrice"];
      this.itemName:map[""];
  }
}

*/

/*
class Order extends Listy {
  int finalPrice, amount, priceNowF;
  int index = 0;
  String name, cutting, delievry, head, photopath, size;

  Order(
      {String namy,
      String cuttingy,
      String delievryy,
      String heady,
      String photopathy,
      String sizy,
      int amounty,
      int finalPricy,
      int priceNowFy}) {
    this.name = "";
    this.amount = 0;
    this.cutting = "";
    this.delievry = "";
    this.head = "";
    this.photopath = "";
    this.size = "";
    this.finalPrice = 0;
    this.priceNowF = 0;
  }

  setter(
      String namy,
      String cuttingy,
      String delievryy,
      String heady,
      String photopathy,
      String sizy,
      int amounty,
      int finalPricy,
      int priceNowFy) {
    this.name = namy;
    this.amount = amounty;
    this.cutting = cuttingy;
    this.delievry = delievryy;
    this.head = heady;
    this.photopath = photopathy;
    this.size = sizy;
    this.finalPrice = finalPricy;
    this.priceNowF = priceNowFy;
  }

  String getName() => orders[index].name;
  String getCutting() => orders[index].cutting;
  String getDelievy() => orders[index].delievry;
  String getHead() => orders[index].head;
  String getPhotopath() => orders[index].photopath;
  String getSize() => orders[index].size;
  int getAmount() => orders[index].amount;
  int getPriceNowF() => orders[index].priceNowF;
  int getFirstPrice() => orders[index].finalPrice;
}



class Listy {
  List<Order> orders = [
    new Order(
        amounty: o.getAmount(),
        cuttingy: o.getCutting(),
        delievryy: o.getDelievy(),
        finalPricy: o.getFirstPrice(),
        heady: o.getHead(),
        namy: o.getName(),
        photopathy: o.getPhotopath(),
        priceNowFy: o.getPriceNowF(),
        sizy: o.getSize())
  ];
}
*/
/*



class Order {
  int finalPrice, amount, priceNowF;
  int index = 0;
  String name, cutting, delievry, head, photopath, size;

  Order(
      {String namy,
      String cuttingy,
      String delievryy,
      String heady,
      String photopathy,
      String sizy,
      int amounty,
      int finalPricy,
      int priceNowFy}) {
    this.name = namy;
    this.amount = amounty;
    this.cutting = cuttingy;
    this.delievry = delievryy;
    this.head = heady;
    this.photopath = photopathy;
    this.size = sizy;
    this.finalPrice = finalPricy;
    this.priceNowF = priceNowFy;
  }

  setter(
      String namy,
      String cuttingy,
      String delievryy,
      String heady,
      String photopathy,
      String sizy,
      int amounty,
      int finalPricy,
      int priceNowFy) {
    this.name = namy;
    this.amount = amounty;
    this.cutting = cuttingy;
    this.delievry = delievryy;
    this.head = heady;
    this.photopath = photopathy;
    this.size = sizy;
    this.finalPrice = finalPricy;
    this.priceNowF = priceNowFy;
  }

  String getName() => orders[index].name;
  String getCutting() => orders[index].cutting;
  String getDelievy() => orders[index].delievry;
  String getHead() => orders[index].head;
  String getPhotopath() => orders[index].photopath;
  String getSize() => orders[index].size;
  int getAmount() => orders[index].amount;
  int getPriceNowF() => orders[index].priceNowF;
  int getFirstPrice() => orders[index].finalPrice;

  List<Order> orders = [
    new Order(
        amounty: o.getAmount(),
        cuttingy: o.getCutting(),
        delievryy: o.getDelievy(),
        finalPricy: o.getFirstPrice(),
        heady: o.getHead(),
        namy: o.getName(),
        photopathy: o.getPhotopath(),
        priceNowFy: o.getPriceNowF(),
        sizy: o.getSize())
  ];
}

*/
List<Map> l = [
  {"itemId": 1, "itemName": "نعيمى", "imageName": "", "salesPrice": 1750},
  {"itemId": 2, "itemName": "حرى", "imageName": "", "salesPrice": 1700},
];

Map<int, String> size = {
  1: "نعيمي صغير",
  2: "نعيمي وسط",
  3: "نعيمي جبر كبير",
  4: "حري صغير",
  5: "حري وسط",
  6: "حري جبر كبير"
};
Map<int, String> delievry = {1: "تكييس", 2: "اطباق مغلفة"};

Map<int, String> cutting = {1: "ارباع - اربع قطع", 2: "ثلاجة - قطع صغيرة"};

Map<int, String> head = {1: "بدون رأس"};

Map<int, int> price = {1: 1750, 2: 1850, 3: 2000, 4: 1700, 5: 1750, 6: 1900};
List<Product> products = [
  new Product(name: "نعيمي", price: "1750", photoPath: "assets/noeme2.jpg"),
  new Product(name: "حري", price: "1700", photoPath: "assets/hry.jpg")
];
