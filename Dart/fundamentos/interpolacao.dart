main() {
  String nome = 'João';
  String status = 'Aprovado';
  double nota = 8.3;

  String frase1 =
      nome + " está " + status + " pq ele tirou " + nota.toString() + "!"; //Contratenação
  String frase2 = "$nome está $status pq ele tirou $nota!"; //Interpolação

  print(frase1);
  print(frase2);
}
