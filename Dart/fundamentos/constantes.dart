import 'dart:io';
import 'dart:math';

main() {
  final double raio, total;
  const pi = 3.1413;

  stdout.write("Digite o raio: ");
  raio = double.parse(stdin.readLineSync()!);

  total = (pow(raio, 2)) * pi;

  print("O valor da área do círculo é: " + total.toString());
}
