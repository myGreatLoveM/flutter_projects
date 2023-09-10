import 'dart:convert';

import 'package:advicer_flutter_project/01_data/exceptions/exceptions.dart';
import 'package:advicer_flutter_project/01_data/models/advice_model.dart';
import 'package:http/http.dart' as http;

abstract class AdviceRemoteDataSource {
  Future<AdviceModel> getRandomAdviceFromApi();
}

class AdviceRemoteDataSourceImpl implements AdviceRemoteDataSource {
  final http.Client client;
  AdviceRemoteDataSourceImpl({required this.client});
  
  @override
  Future<AdviceModel> getRandomAdviceFromApi() async {
    final response = await client.get(
      Uri.parse('https://api.flutter-community.com/api/v1/advice'),
      headers: {'Content-type': 'application/json'},
    );
    if (response.statusCode == 200) {
      throw ServerException();
    }
    final responseBody = await json.decode(response.body);
    return AdviceModel.fromJSON(responseBody);
  }
}
