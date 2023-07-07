import 'package:project_uas_mintarsih_06tplm006/model/cuaca_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:project_uas_mintarsih_06tplm006/service/cuaca_service.dart';

class CuacaProvider extends ChangeNotifier {
  TextEditingController cityNameText = TextEditingController();

  CuacaService cuacaService = CuacaService();
  CuacaModel cuacaModel = CuacaModel();

  showWeatherData() async {
    cuacaModel = await cuacaService.getCurrentWeather(cityNameText.text);
    print(cuacaModel.weather?.first.main);
    notifyListeners();
  }
}