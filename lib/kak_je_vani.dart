import 'package:weather/weather.dart';

String key = "c853eff98b33883c2ca24735cbb78099";
String cityName = "Zagreb";
int temp = 0;
Future<double?> getTemperature() async {
  WeatherFactory wf = WeatherFactory(key);

  final w =
      await wf.currentWeatherByCityName(cityName).whenComplete(() => null);
  return w.temperature?.celsius;
}
