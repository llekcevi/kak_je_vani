import 'package:weather/weather.dart';

String key = "c853eff98b33883c2ca24735cbb78099";
String cityName = "Zagreb";

Future<List<dynamic?>> getWeather(String city) async {
  WeatherFactory wf = WeatherFactory(key);

  final w = await wf.currentWeatherByCityName(city);

  return [
    w.temperature!.celsius!.round(),
    w.tempFeelsLike!.celsius!.round(),
    w.weatherDescription,
    w.windSpeed,
    w.areaName
  ];
}
