import 'package:get/get.dart';
import 'package:network/app/modules/home/service/home_service.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  final homeService = HomeService();

  getAuthMe() async {
    await homeService.getInfo();
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
