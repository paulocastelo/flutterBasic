import 'package:flutterBasic/FamiliaCasteloUtils.dart';
main() {
  print("====================================");
  print("Estruturas de Dados - Teoria Necessária");
  print("====================================");
  print("Listas");
  print("====================================");
  // Lista ordenada
  List<String> nomes = [
    "Paulo Castelo",
    "Debora Castelo",
    "Rebeca Castelo",
    "Helena Castelo",
    "Maria Castelo",
    "Yossef Castelo",
    "Emanuel Castelo",
    "Bianca Castelo",
  ];

  // Adicionando um elemento na lista
  print("Adicionando um elemento na lista");
  nomes.add("Victor Castelo");

  // Remover a posição 7
  print("Removendo o elemento na posição 7");
  nomes.removeAt(7);

  // Adicionando na posição 7
  print("Adicionando o elemento na posição 7");
  nomes.insert(7, "Samuel Castelo");

  // Listando os elementos
  print("Listando os elementos");
  imprimirNomes(nomes);

  // Ordenando a lista
  print("Ordenando a lista");
  nomes.sort();

  // Listando os elementos utilizando o forEach
  print("Listando os elementos utilizando o forEach");
  imprimirNomes(nomes);

  print("\n====================================");
  print("Mapas");
  print("====================================");

  // Utilizando o map para transformar os elementos
  print("Utilizando o map para transformar os elementos");
  var nomesMap = nomes.map((nome) => nome.toUpperCase());
  print("Listando os elementos utilizando o map");
  imprimirNomes(nomesMap.toList());

  // Utiliza where para filtrar os elementos
  print("Filtrando os elementos que tenha a letra 'a'");
  var nomesFiltrados = nomes.where((nome) => nome.contains("a"));
  imprimirNomes(nomesFiltrados.toList());
  print("====================================");

  // Utiliza where para filtrar os elementos que tenha a letra 'a' e o sobrenome Castelo
  print("Filtrando os elementos que tenha o nome finalize com a letra 'a' e o sobrenome Castelo");
  var nomesFiltrados2 = nomes.where((nome) => nomes.contains("a Castelo"));
  imprimirNomes(nomesFiltrados2.toList());

  print("====================================");
  // Utilizando Map<>
  print("Utilizando Map<>");
  List<Map<String, dynamic>> familia = [
    {"nome": "Paulo Castelo", "ativo": true},
    {"nome": "Debora Castelo", "ativo": true},
    {"nome": "Rebeca Castelo", "ativo": true},
    {"nome": "Helena Castelo", "ativo": true},
    {"nome": "Maria Castelo", "ativo": true},
    {"nome": "Yossef Castelo", "ativo": true},
    {"nome": "Bianca Castelo", "ativo": true},
    {"nome": "Emanuel Castelo", "ativo": true},
    {"nome": "Victor Mauricio Castelo", "ativo": true},
    {"nome": "Ester Castelo", "ativo": false},
    {"nome": "Samuel Castelo", "ativo": false},
    {"nome": "Graça Castelo", "ativo": false},
    {"nome": "Raquel Castelo", "ativo": false},
    {"nome": "Victor Castelo", "ativo": false},
    {"nome": "Safira Castelo", "ativo": false},
  ];
  // Listando os elementos
  print("Listando os elementos");
  imprimirElementosDoMap(familia);
  // for (var elemento in familia.entries) {
  //   print("Chave: ${elemento.key} - Valor: ${elemento.value}");
  // }

  // Adicionando um elemento no Map com as chaves nome e ativo
  print("Adicionando um elemento no Map com as chaves nome e ativo");

  familia.addAll([
    {"nome": "Victoria Castelo", "ativo": true},
    {"nome": "Martha Castelo", "ativo": true},
    {"nome": "Nichole Castelo", "ativo": true},
  ]);

  // Listando os elementos
  print("Listando os elementos");
  imprimirElementosDoMap((familia));
  // Removendo o elemento do Map pelo valor da chave nome
  print("Removendo o elemento do Map com o nome Bianca Castelo");
  familia.removeWhere((elemento) => elemento["nome"] == "Bianca Castelo");

  print("\n====================================");
  print("Sets");
  print("====================================");
  // Criando um Set
  Set<String> familiaSet = {
    "Paulo Castelo",
    "Debora Castelo",
    "Rebeca Castelo",
    "Helena Castelo",
    "Maria Castelo",
    "Yossef Castelo",
    "Bianca Castelo",
    "Emanuel Castelo",
  };
  // Adicionando um elemento no Set
  print("Adicionando um elemento no Set");
  familiaSet.add("Victor Castelo");
  // Adicionando um elemento que já existe no Set
  print("Adicionando um elemento que já existe no Set");
  familiaSet.add("Victor Castelo");
  // Listando os elementos do Set
  print("Listando os elementos do Set");
  imprimirNomes(familiaSet.toList());

  // Removendo um elemento do Set
  print("Removendo um elemento do Set");
  familiaSet.remove("Bianca Castelo");

  // Listando os elementos do Set
  print("Listando os elementos do Set");
  imprimirNomes(familiaSet.toList());

  // Contains no set
  String nomeProcurado = "Bianca Castelo";
  print("Verificando se o Set contém o elemento '$nomeProcurado'");
  if (familiaSet.contains(nomeProcurado)) {
    print("O Set contém o elemento '$nomeProcurado'");
  } else {
    print("O Set não contém o elemento '$nomeProcurado'");
  }
}

// Funções comentadas por terem sido movidas para o arquivo FamiliaCasteloUtils.dart

// // função para imprimir os elementos do map
// void imprimirElementosDoMap(List<Map<String, dynamic>> familia) {
//   for (var pessoa in familia) {
//     print("Nome: ${pessoa['nome']}, Ativo: ${pessoa['ativo']}");
//   }
// }

// // // função para imprimir os elementos
// void imprimirNomes(List<String> nomes) {
//   for (var nome in nomes) {
//     print(nome);
//   }
// }
