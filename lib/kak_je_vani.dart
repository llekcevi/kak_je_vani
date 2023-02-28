import 'package:weather/weather.dart';

String key = "c853eff98b33883c2ca24735cbb78099";
String cityName = "Zagreb";

Map<String, bool> clothes = {
  "Winter jacket": false,
  "Light jacket": false,
  "Beanie": false,
  "Scarf": false,
};

Future<List<int?>> getTemperature(String city) async {
  WeatherFactory wf = WeatherFactory(key);

  final w = await wf.currentWeatherByCityName(city);

  return [w.temperature!.celsius!.round(), w.tempFeelsLike!.celsius!.round()];
}
