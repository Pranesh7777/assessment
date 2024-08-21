import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../app_exception.dart';
import 'base_api_services.dart';

class NetworkApiService extends BaseApiServices {
  @override
  Future<dynamic> getQueryResponse(String url) async {
    dynamic responseJson;
    try {
      final response = await http.get(
        Uri.parse(url).replace(),
      );
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException(message: "No Internet Connection");
    }
    return responseJson;
  }



  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 201:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException(message: response.body.toString());
      case 401:
        throw UnAuthorizedException(message: response.body.toString());
      case 404:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      default:
        throw FetchDataException(
            message: "Error occured while communicating with server " +
                "with status code " +
                response.statusCode.toString());
    }
  }
}
