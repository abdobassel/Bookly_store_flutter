import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio();
  final baseUrl = 'https://www.googleapis.com/books/v1/';

  Future<Map<String, dynamic>> getData({required String endPoint}) async {
    var response = await _dio.get('$baseUrl$endPoint');

    return response.data;
  }
}
