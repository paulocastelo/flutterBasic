import 'dart:io';

import 'package:meu_primeiro_app/exercicios/07_cadastro_dart.dart';

// Modelo de pessoa
class Pessoa {
  String nome;
  Pessoa(this.nome);

  void exibir() {
    print("👤 Nome: $nome");
  }
}

class SistemaDeCadastro {
  List<Pessoa> pessoas = [];
  void adicionarPessoa() {
    stdout.write("Digite o nome da pessoa: ");
    String? nome = stdin.readLineSync();
    if (nome != null && nome.isNotEmpty) {
      Pessoa novaPessoa = Pessoa(nome);
      pessoas.add(novaPessoa);
      print("✅ Pessoa adicionada com sucesso!");
    }
  }

  void listarPessoas() {
    if (pessoas.isEmpty) {
      print("❌ Nenhuma pessoa cadastrada.");
    } else {
      print("\n ==== Impressão utilizando o for tradicional: ====");
      print("👥 Lista de Pessoas:");
      for (int i = 0; i < pessoas.length; i++) {
        print("${i + 1}. ${pessoas[i].nome}");
      }

      // print("\n ==== Impressão utilizando o forEach: ==== ");
      // print("👥 Lista de Pessoas:");
      // pessoas.forEach((pessoa) {
      //   print("👤 Nome: ${pessoa.nome}");
      // });

      // print("\n ==== Impressão utilizando o for in: ====");
      // for (var pessoa in pessoas) {
      //   pessoa.exibir();
      // }
    }
  }

  void editarPessoa() {
    selecionarPessoa((pessoa, indice) {
      stdout.write("Digite o novo nome da pessoa:");
      String? novoNome = stdin.readLineSync();
      if (validaNovoNome(novoNome)) {
        pessoa.nome = novoNome!;
        print("✅ Pessoa editada com sucesso!");
      } else {
        print("❌ Nome inválido! Tente novamente.");
      }
    });

    // Sem utilização do método selecionarPessoa
    // listarPessoas();
    // if(pessoas.isNotEmpty){
    //   stdout.write("Digite o número da pessoa que deseja editar: ");
    //   int? numero = int.parse(stdin.readLineSync()!);
    //   if(numero > 0 && numero <= pessoas.length){
    //     stdout.write("Digite o novo nome da pessoa: ");
    //     String? novoNome = stdin.readLineSync();
    //     if(novoNome != null && novoNome.isNotEmpty){
    //       pessoas[numero -1].nome = novoNome;
    //       print("✅ Pessoa editada com sucesso!");
    //     }else{
    //       print("❌ Nome inválido! Tente novamente.");
    //     }
    //   }else{
    //     print("❌ Número inválido! Tente novamente.");
    //   }
    // }
  }

  void removerPessoa() {
    selecionarPessoa((pessoa, indice) {
      stdout.write("Você deseja realmente remover ${pessoa.nome}? (s/n): ");
      String? resposta = stdin.readLineSync();

      if (resposta != null && resposta.toLowerCase() == 's') {
        pessoas.removeAt(indice);
        print("✅ Pessoa removida com sucesso!");
      } else {
        print("❌ Remoção cancelada.");
      }
    });

    // Método para remover sem utilizar o método selecionarPessoa
    // listarPessoas();
    // if(pessoas.isNotEmpty){
    //   stdout.write("Digite o número da pessoa que deseja remover: ");
    //   int? numero = int.parse(stdin.readLineSync()!);
    //   if(numero > 0 && numero <= pessoas.length){
    //     pessoas.removeAt(numero - 1);
    //     print("✅ Pessoa removida com sucesso!");
    //   }else{
    //     print("❌ Número inválido! Tente novamente.");
    //   }
    // }
  }

  // Método para selecionar uma pessoa
  void selecionarPessoa(Function(Pessoa pessoa, int indice) aoSelecionar) {
    listarPessoas();
    if (pessoas.isEmpty) {
      print("❌ Nenhuma pessoa cadastrada.");
      return;
    }
    stdout.write("Digite o número da pessoa:");
    int? numero = int.parse(stdin.readLineSync()!);

    if (numero == null || numero <= 0 || numero > pessoas.length) {
      print("❌ Número inválido! Tente novamente.");
      return;
    }
    Pessoa pessoaSelecionada = pessoas[numero - 1];
    aoSelecionar(pessoaSelecionada, numero - 1);
  }

  bool validaNovoNome(String? novoNome) {
    if (novoNome == null || novoNome.isEmpty) {
      print("❌ Nome inválido! Tente novamente.");
      return false;
    } else {
      return true;
    }
  }
}

void main() {
   final sistema = SistemaDeCadastro(); // Instância única da classe SistemaDeCadastro
  while (true) {
    print("\n==== MENU CRUD ====");
    print("1. Criar Pessoa");
    print("2. Listar Pessoas");
    print("3. Editar Pessoa");
    print("4. Remover Pessoa");
    print("5. Sair");

    stdout.write("Escolha uma opção: ");
    String? opcao = stdin.readLineSync();

    switch (opcao) {
      case '1':
        sistema.adicionarPessoa();
        // adicionarPessoa(); // não utilizar a classe SistemaDeCadastro
        break;
      case '2':
        sistema.listarPessoas();
        // listarPessoas(); // não utilizar a classe SistemaDeCadastro
        break;
      case '3':
        sistema.editarPessoa();
        // editarPessoa(); // não utilizar a classe SistemaDeCadastro
        break;
      case '4':
        sistema.removerPessoa();
        // removerPessoa(); // não utilizar a classe SistemaDeCadastro
        break;
      case '5':
        print("Sistema encerrado 👋");
        exit(0);
      default:
        print("❌ Opção inválida! Tente novamente.");
    }
  }
}
