import 'dart:io';

// Classe Pessoa
class Pessoa {
  String nome;
  Pessoa(this.nome);
}

// Lista de objetos Pessoa
List<Pessoa> pessoas = [
  Pessoa("Neo"),
  Pessoa("Trinity"),
  Pessoa("Morpheus"),
];

void main() {
  // Imprimir todos os nomes com forEach
  pessoas.forEach((p) => print(p.nome));
}
