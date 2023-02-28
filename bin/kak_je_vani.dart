import 'dart:io';

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

void main(List<String> arg) async {
  print("input city: ");
  final city = stdin.readLineSync();

  final t = await getTemperature(city!);
  print("Temperature: ${t[0]}°C | Feels like: ${t[1]}°C");

  if (t[1]! <= 3) {
    clothes.update("Winter jacket", (value) => true);
    clothes.update("Beanie", (value) => true);
    clothes.update("Scarf", (value) => true);
  }
  print("put on: ");

  clothes.forEach((key, value) {
    if (value == true) print("  $key");
  });
}
