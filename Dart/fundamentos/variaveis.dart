main() {
  int a = 2;
  double b = 3.14152;
  b = 3.1415;
  String texto = "Aeeee";

  print(a * b);
  print(1 + 2 * 4);
  print(a.runtimeType);
  print(b.runtimeType);
  print(texto.runtimeType);

  // ignore: unnecessary_type_check
  print(a is int);
  print(b is int);
}
