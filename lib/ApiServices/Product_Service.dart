import 'dart:convert';

import 'package:food_app/Models/Product_Model.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class ProductService {
  String base_url = 'https://food.elms.pk/api/FoodProduct/PublicGetProductListByCategoryId?CategoryId=';
 // String base_url = 'https://food.elms.pk/api/FoodProduct/PublicGetProductList?CategoryId=';


  Future<List<ProductModel>> getProductlist(String? id_url) async {



    if (id_url != null) {

      Response   response = await get(Uri.parse(base_url + id_url));

      if (response.statusCode == 200) {
        List list = jsonDecode(response.body);
        var data = list.map((e) => ProductModel.fromJson(e)).toList();

        return data;
      }
      return [];
    } else {

      Response   response = await get(Uri.parse(base_url+"2021"));
      if (response.statusCode == 200) {
        List list = jsonDecode(response.body);
        var data = list.map((e) => ProductModel.fromJson(e)).toList();

        return data;
      }
      return [];
    }


  }
}
