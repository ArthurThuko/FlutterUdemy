import 'dart:io';
import 'dart:math';

main() {
  num? raio, total;
  const pi = 3.1413;

  print("Digite o raio: ");
  raio = stdin.readLineSync() as double?;

  total = (pow(raio!, 2) as double?)! * pi;

  print("O valor da área do círculo é: " + total.toString());
}
