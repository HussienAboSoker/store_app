//import 'dart:convert';

//import 'package:http/http.dart' as http;
import 'package:hussien/helper/api.dart';

// code before create a Api class
/*
class GetCategoriesServices {
  Future<List<dynamic>> getCategories({required String categoryName}) async {
    http.Response response = await http
        .get(Uri.parse('https://fakestoreapi.com/products/category/$categoryName'));
        if (response.statusCode==200) {
          List<dynamic> jasonData = jsonDecode(response.body);
    return jasonData;
        }else{
          throw Exception('there is a problem whith status code${response.statusCode}');
        }
    
  }
}*/
// code after create a Api class
class GetCategoriesServices {
  Future<List<dynamic>> getCategories({required String categoryname}) async {
    List<dynamic> data = await Api()
        .get(uri: 'https://fakestoreapi.com/products/category/$categoryname');
    return data;
  }
}
