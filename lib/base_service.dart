import 'package:get/get.dart' as Getx;

class BaseService extends Getx.GetConnect {
  @override
  bool get allowAutoSignedCert => true;

  BaseService() {
    timeout = const Duration(minutes: 2);
    maxAuthRetries = 3;
  }

  @override
  void onInit() {
    // add your local storage here to load for every request

    //1.base_url
    httpClient.baseUrl = 'http://google.com';
    //2.
    httpClient.defaultContentType = "application/json";
    // httpClient.timeout = Duration(seconds: 300);
    httpClient.addResponseModifier((request, response) async {
      print(response.body);
    });

    super.onInit();
  }
}
