import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Product.dart';

class Vogue {
  final dynamic id;
  final dynamic pname;
  final dynamic images;
  final dynamic description;
  final dynamic price;
  final dynamic numberInStock;
  final dynamic promotions;
  final dynamic top;
  final dynamic tag;
  final dynamic category;
  Vogue({
    required this.id,
    required this.images,
    required this.pname,
    required this.price,
    required this.numberInStock,
    required this.description,
    required this.promotions,
    required this.top,
    required this.tag,
    required this.category,
  });
}


class Vogues with ChangeNotifier {
  List<Vogue> _vogues = [];

  List<Vogue> get vogues {
    return [..._vogues];
  }

  Future<void> fetchVogue() async {
    var url = Uri.parse("http://192.168.28.177:3900/api/products/vogue");
    try {
      final response = await http.get(url);
      final extractedData = json.decode(response.body);
      List<Vogue> loadedProducts = [];
      extractedData['Vogues'].forEach((item) => {
            loadedProducts.add(Vogue(
              id: item["_id"].toString(),
              images: item["images"],
              pname: item["pname"],
              price: item["price"].toString(),
              numberInStock: item["numberInStock"].toString(),
              description: item["description"],
              promotions: item["promotions"],
              top: item["top"],
              tag: item["tag"],
              category: item["category"],
            ))
          });
      _vogues = loadedProducts;
      notifyListeners();
    } catch (error) {
      print(error);
    }
  }
}
