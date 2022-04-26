import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_with_repo/controller/product_controller.dart';
import 'package:getx_with_repo/model/productmodel.dart';
import 'helper/dependacies.dart' as dep;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: Myapp(),
  ));
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<ProductController>().getProductList();
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Getx'),
          ),
        ),
        body: GetBuilder<ProductController>(builder: (product) {
          return ListView.builder(
              itemCount: product.productList.length,
              itemBuilder: (_, index) {
                productModel data = product.productList[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Text(data.code.toString())),
                );
              });
        }));
  }
}
