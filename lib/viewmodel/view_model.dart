import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import '../data/respose/api_response.dart';
import '../model/user_model.dart';

import '../repository/repo.dart';

class ViewModel with ChangeNotifier {
  final _myRepo = Repository();

  Future<ApiResponse<List<User>>> getList() async {
    ApiResponse<List<User>> listResponse = ApiResponse.loading();

    try {
      final List<User> value = (await _myRepo.getList());

      listResponse = ApiResponse.success(value);

      print("response = $value");
    } catch (error) {
      if (kDebugMode) {
        listResponse = ApiResponse.error(error.toString());
        print(error);
      }
    }
    return listResponse;
  }
}
