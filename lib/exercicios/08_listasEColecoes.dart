import 'dart:io';

main() {
  // Lista vazia
  List<String> nomes = [];

  // Lista com elementos
  List<int> numeros = [1, 2, 3, 4, 5];

  print(numeros[0]); // Acessando o primeiro elemento da lista
  numeros[1] = 10; // Altera o valor do segundo número

  // Adicionando eles à lista de nomes
  nomes.add("Neo");
  nomes.addAll(["Morpheus", "Trinity", "Smith"]);
  print(nomes); // Imprime a lista de nomes

  // Removendo elementos da lista
  nomes.remove("Neo");
  nomes.removeAt(0);
  nomes.clear(); // Limpa a lista

  nomes.contains("Trinity ");
  nomes.isEmpty;
  nomes.length;

  // Iterando sobre listas
  // for
  for (int i = 0; i < nomes.length; i++) {
    print(nomes[i]);
  }

  // for-in
  for (var nome in nomes) {
    print(nome);
  }

  // Métodos funcionais: map, where, forEach
  // map()
  var nomesEmMaiusculas = nomes.map((nome) => nome.toUpperCase()).toList();

  // where()
  var nomesComT = nomes.where((n) => n.startsWith("T")).toList();

  // forEach()
  nomes.forEach((nome) => print("Nome: $nome"));
}
