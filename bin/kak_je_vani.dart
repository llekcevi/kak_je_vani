import 'dart:io';
import 'package:kak_je_vani/kak_je_vani.dart';

void main(List<String> arg) async {
  print("input city: ");
  final city = stdin.readLineSync();

  final w = await getWeather(city!);
  print("Temperature: ${w[0]}°C | Feels like: ${w[1]}°C");
  print("Weather: ${w[2]} | Wind speed : ${w[3]} m/s");
  determineClothes(w);

  getClothes();

  exit(1);
}
