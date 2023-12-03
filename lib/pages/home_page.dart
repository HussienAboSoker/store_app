import 'package:flutter/material.dart';
import 'package:hussien/models/all_product_model.dart';
import 'package:hussien/services/get_all_products_services.dart';
import 'package:hussien/widgets/customcard.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shop,
                color: Color.fromARGB(255, 132, 50, 50),
              )),
        ],
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "News trend",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: FutureBuilder<List<AllProductModel>>(
            //create an object from GetAllProductServices
            //reguest for get all product
            future: GetAllProductServices().getAllProduct(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<AllProductModel> product = snapshot.data!;
              return GridView.builder(
                itemCount: product.length,
                clipBehavior: Clip.none,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.5, //whidth/hight
                  crossAxisSpacing: 7,
                  mainAxisSpacing: 30,
                ),
                itemBuilder: (context, index) {
                  return CutmoCard(
                    product: product[index],
                  );
                },
              );

              }
              return const Center(
                  child: CircularProgressIndicator(
                color: Colors.black,
              )
              );
            }),
      ),
    );
  }
}