import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Product.dart';

class Deal {
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
  Deal({
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


class Deals with ChangeNotifier {
  List<Deal> _deals = [];

  List<Deal> get deals {
    return [..._deals];
  }

  Future<void> fetchDeals() async {
    var url = Uri.parse("http://192.168.28.177:3900/api/products/deals");
    try {
      final response = await http.get(url);
      final extractedData = json.decode(response.body);
      List<Deal> loadedProducts = [];
      extractedData['deals'].forEach((item) => {
            loadedProducts.add(Deal(
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
      _deals = loadedProducts;
      notifyListeners();
    } catch (error) {
      print(error);
    }
  }
}
