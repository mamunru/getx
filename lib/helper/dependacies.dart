import 'package:get/get.dart';
import 'package:getx_with_repo/api/api_client.dart';
import 'package:getx_with_repo/api/server.dart';
import 'package:getx_with_repo/controller/product_controller.dart';
import 'package:getx_with_repo/repo/product_repo.dart';

Future<void> init() async {
  //apiclient
  Get.lazyPut(() => ApiClient(appBaseurl: Server.baseurl, token: ''));

  //repo
  Get.lazyPut(() => ProductRepo(apiClient: Get.find()));

  //controller
  Get.lazyPut(() => ProductController(productRepo: Get.find()));
}
