import 'package:task_3/models/products_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class DataSource {
  static List<Product> products = [];
  static Future<List<Product>> getData() async {
    final response =
    await http.get(Uri.parse('https://dummyjson.com/products'));
    List<Product> productsList = [];

    if (response.statusCode == 200) {
      var jsonResponse =
      convert.jsonDecode(response.body) as Map<String, dynamic>;
      for (var item in jsonResponse['products']) {
        productsList.add(Product.fromJson(item));
      }
    }
    return productsList;
  }
  static bool isLoading = true;
}
