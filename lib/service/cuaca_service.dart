import 'package:dio/dio.dart';
import 'package:project_uas_mintarsih_06tplm006/model/cuaca_model.dart';

class CuacaService {
  final dio = Dio();

  Future<CuacaModel> getCurrentWeather(String cityName) async {
    // HTTP Request
    final response = await dio.get(
        'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=343b7928a944e566ddfcfc7d94ca944a&units=metric');
    print(response.requestOptions.path);
    // Convert
    return CuacaModel.fromJson(response.data);
  }
}