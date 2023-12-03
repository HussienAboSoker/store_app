import 'package:hussien/helper/api.dart';
import 'package:hussien/models/all_product_model.dart';

class PutUpdateService {
  addproduct({
    required String title,
    required double price,
    required String description,
    required String image,
    required String categoty,
  }) async {
   Map<String,dynamic> data= await Api().put(url: '', body: {
      "title": title,
      "price": price,
      "description": description,
      "image": image,
      "category": categoty,
     
    },
    //token: token, but this api no take a token
    );
    return AllProductModel.fromjason(data);
  }
}
