import 'package:get/get.dart';
import 'package:getx_with_repo/api/api_client.dart';
import 'package:getx_with_repo/api/server.dart';

class ProductRepo extends GetxService {
  final ApiClient apiClient;
  ProductRepo({required this.apiClient});

  Future<Response> getProductList() async {
    return await apiClient.getData(Server.product);
  }
}
