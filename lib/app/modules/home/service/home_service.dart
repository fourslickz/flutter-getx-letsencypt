import 'dart:developer';

import 'package:get/get_connect/connect.dart';
import 'package:network/base_service.dart';

class HomeService extends BaseService {
  Future<String?> getInfo() async {
    try {
      //String uri = 'https://jsonplaceholder.typicode.com/users';
      String uri = 'https://passport.ayosatu.xyz/api/auth/me';
      // Map<String, dynamic> body = {
      //   'id': '4',
      // };
      // var hasil = json.encode(body);

      // var headers = {'Authorization': "Bearer ${prefController.token}"};

      Response? resp = await get(
        uri,
      );
      log(resp.body.toString());
      //String response = '1';
      log(resp.statusCode.toString());
      if (resp.statusCode == 200) {
        log(resp.body);
      }
      return '1';
    } catch (e) {
      print(e);
    }
  }
}
