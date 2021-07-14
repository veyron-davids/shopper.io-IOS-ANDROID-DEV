import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'Product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [];
  List<Product> _vogue = [];

  // Products(this._items);

  List<Product> get items {
    return [..._items];
  }

  List<Product> get vogue {
    return [..._vogue];
  }

  void getVogue() {
    List<Product> loadedProducts = [];
    _items.forEach((item) => {
          if (item.category == "Vogue") {loadedProducts.add(item)}
        });
    _vogue = loadedProducts;
  }

  Future<void> fetchProducts() async {
    var url = Uri.parse("http://192.168.28.177:3900/api/products");
    try {
      final response = await http.get(url);
      final extractedData = json.decode(response.body);
      List<Product> loadedProducts = [];
      extractedData['products'].forEach((item) => {
            loadedProducts.add(Product(
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
      _items = loadedProducts;
      notifyListeners();
    } catch (error) {
      print(error);
    }
  }
}
