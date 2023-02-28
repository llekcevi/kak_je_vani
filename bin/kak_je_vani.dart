import 'dart:io';
import 'package:kak_je_vani/kak_je_vani.dart';

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
