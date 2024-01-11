main() {
  //List aceita repetições

  Map telefones = {
    'João': '+55 (11) 98765-4321',
    'Arthur': '+5648544854855',
    'Maria': '84894848484',
    'João': '185191 98765-4321',
  }; //No map não é permitido repetição, será sempre a última chave

  print(telefones is Map);
  print(telefones);
  print(telefones['João']);
  print(telefones.length);
  print(telefones.values);
  print(telefones.keys);
  print(telefones.entries);

  Set times = {
    'Corinthians',
    'Vasco',
    'Flamengo',
    'Cuiabá',
  }; //Set não aceita repetições
  print(times is Set);
  times.add('Palmeiras');
  print(times);
  print(times.contains('Vasco'));
  print(times.length);
  print(times.first);
  print(times.last);
}
