import 'dart:io';
import 'package:kak_je_vani/kak_je_vani.dart';
import 'package:args/args.dart';

void main(List<String> args) async {
  final parser = ArgParser();
  String city;

  parser.addOption("city", abbr: "c");

  final results = parser.parse(args);

  if (results.wasParsed("city")) {
    print(results['city']);

    city = results["city"];
  } else {
    city = "Zagreb";
  }
  print(city);

  final w = await getWeather(city);

  print("Temperature: ${w[0]}°C | Feels like: ${w[1]}°C");
  print("Weather: ${w[2]} | Wind speed : ${w[3]} m/s");
  exit(1);
}
