import 'dart:io';

main() {
  print("Está chovendo? [s/N]");
  final String resposta1 = stdin.readLineSync()!;
  bool estaChovendo = resposta1 == "s";

  print("Está Frio? [s/N]");
  final String resposta2 = stdin.readLineSync()!;
  bool estaFrio = resposta2 == "s";

  String resultado =
      estaChovendo && estaFrio 
      ? "Ficar em casa"
      : "Sair de casa";
  print(resultado);
}
