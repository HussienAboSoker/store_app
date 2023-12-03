//import 'dart:convert';

import 'package:hussien/helper/api.dart';
import 'package:hussien/models/all_product_model.dart';
//import 'package:http/http.dart' as http;

// code before create a Api class
/*
class GetAllProductServices {
  Future<List<AllProductModel>> GetAllProduct() async {
    http.Response response =
        //get reguist from api
        await http.get(Uri.parse('https://fakestoreapi.com/products'));
    if (response.statusCode == 200) {
      List<dynamic> jasonData = jsonDecode(response.body);
      List<AllProductModel> ProductList = [];
      //put all data in productList to return AllProductModel
      for (var i = 0; i < jasonData.length; i++) {
        ProductList.add(
          AllProductModel.fromjason(jasonData[i]),
        );
      }

      return ProductList;
    } else {
      throw Exception(
          'there is a problem whith status code${response.statusCode}');
    }
  }
}*/
// code after create a Api class
class GetAllProductServices {
 Future<List<AllProductModel>> getAllProduct() async {
    List<dynamic> data =
        await Api().get(uri: 'https://fakestoreapi.com/products');
    List<AllProductModel> allproductlist = [];
    for (var i = 0; i < data.length; i++) {
     // X allproductlist.add(data[i]);
     AllProductModel.fromjason(data[i]);
    }
    return allproductlist;
  }
}