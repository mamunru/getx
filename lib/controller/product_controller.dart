import 'dart:ffi';

import 'package:get/get.dart';
import 'package:getx_with_repo/model/productmodel.dart';
import 'package:getx_with_repo/repo/product_repo.dart';

class ProductController extends GetxController {
  final ProductRepo productRepo;
  ProductController({required this.productRepo});
  List<dynamic> _productList = [];
  List<dynamic> get productList => _productList;

  Future<void> getProductList() async {
    Response response = await productRepo.getProductList();

    if (response.statusCode == 200) {
      _productList = [];
      response.body['data'].forEach((data) {
        _productList.add(productModel.fromJson(data));
      });
      // _productList.addAll(productModel.fromJson(response.body['data']));
      print('come from product controller and get method');
      print(response.body['data'].length);
      update();
    } else {}
  }
}
