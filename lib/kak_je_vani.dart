import 'package:weather/weather.dart';

String key = "c853eff98b33883c2ca24735cbb78099";
String cityName = "Zagreb";

Map<String, bool> clothes = {
  "Winter coat": false,
  "Jacket": false,
  "Light jacket": false,
  "Trousers": false,
  "Shorts": false,
  "Long sleeves": false,
  "T-shirt": false,
  "Beanie": false,
  "Scarf": false,
};

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

void determineClothes(List<dynamic> t) {
  if (t[1]! <= 3) {
    clothes.update("Winter coat", (value) => true);
    clothes.update("Beanie", (value) => true);
    clothes.update("Scarf", (value) => true);
  }
}

void getClothes() {
  print("-----------------------------");
  print("Put on: ");

  clothes.forEach((key, value) {
    if (value == true) print("  $key");
  });
  print("-----------------------------");
}
