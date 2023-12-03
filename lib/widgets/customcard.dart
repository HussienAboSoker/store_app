import 'package:flutter/material.dart';
import 'package:hussien/models/all_product_model.dart';
import 'package:hussien/services/get_all_products_services.dart';

class CutmoCard extends StatelessWidget {
   CutmoCard({super.key,
  required this.product});
//final GetAllProductServices allproduct;
 AllProductModel product;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        //  height: 150,
        //  width: 150,
         child: Center(
           child: Card(
             elevation: 10,
             child: Stack(
               clipBehavior: Clip.none,
               children: [
                 Padding(
                   padding: const EdgeInsets.all(10),
                   child: Column(
                                 mainAxisAlignment: MainAxisAlignment.end,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     
                                const    Text(
                       "T_sharet",
                       style: TextStyle(
                         fontSize: 10,
                       ),
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       crossAxisAlignment: CrossAxisAlignment.end,
                       children: [
                     const    Text(
                           r"$220",
                           style: TextStyle(
                             fontSize: 22,
                           ),
                         ),
                         IconButton(
                           onPressed: () {},
                           icon:const Icon(Icons.favorite),
                         ),
                       ],
                     ),
                   ],
                                ),
                 ),
                 //image
                   Positioned(
                     bottom: 70,
                     right: 5,
                     child: Image.network(
                  product.image,
              
                       height: 100,
                       width: 100,
                     ),
                   ),
            
            ], ),
           ),
         ),
            ),
    );
  }
}