import 'package:shared_preferences/shared_preferences.dart';
import '../../resources/app_urls.dart';
import '../data/network/base_api_services.dart';
import '../data/network/network_api_services.dart';
import '../model/user_model.dart';

class Repository {
  final BaseApiServices _apiService = NetworkApiService();

  Future<List<User>> getList() async {
    try {
      var url = AppUrl.users;
      final response = await _apiService.getQueryResponse(url);

      List<User> data =
          List<User>.from(response.map((json) => User.fromJson(json)));

      return data;
    } catch (e) {
      rethrow;
    }
  }
}
