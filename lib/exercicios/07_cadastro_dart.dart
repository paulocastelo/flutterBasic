import 'dart:io';

// Classe que representa a Pessoa
class Pessoa {
  String nome;
  String email;

  Pessoa(this.nome, this.email);

  void exibirResumo() {
    print("Nome: $nome, E-mail: $email");
  }
}

// Classe que gerencia o sistema de cadastro
class SistemaCadastro {
  void iniciar() {
    while (true) {
      print("\n==== MENU ====");
      print("Selecione um dos números abaixo para continuar:");
      print("1. Adicionar cadastro");
      print("2. Listar cadastros");
      print("3. Sair");

      stdout.write("Escolha uma opção: ");
      String? opcao = stdin.readLineSync();

      switch (opcao) {
        case '1':
          adicionarCadastro();
          break;
        case '2':
          listarCadastros();
          break;
        case '3':
          print("Saindo do sistema...");
          exit(0);
          return;
        default:
          print("❌ Opção inválida. Tente novamente.");
          break;
      }
    }
  }
}

List<Map<String, String>> cadastros = [];

void main() {
  // Comentado por ter sido substituído pela classe SistemaCadastro
  // while (true) {
  //   print("\n==== MENU ====");
  //   print("Selecione um dos números abaixo para continuar:");
  //   print("1. Adicionar cadastro");
  //   print("2. Listar cadastros");
  //   print("3. Sair");

  //   stdout.write("Escolha uma opção: ");
  //   String ? opcao = stdin.readLineSync();

  //   // if (opcao != "1" ||opcao != "2" || opcao != "3") {
  //   //   print("Opção inválida. Tente novamente digitando apenas o número de uma das opções.");
  //   //   continue;
  //   // }
  //   switch (opcao) {
  //     case '1':
  //       adicionarCadastro();
  //       break;
  //     case '2':
  //       listarCadastros();
  //       break;
  //     case '3':
  //       print("Saindo do sistema...");
  //       exit(0);
  //       return;
  //     default:
  //       print("Opção inválida. Tente novamente digitando apenas o número de uma das opções.");
  //       break;
  //   }
  // }
  SistemaCadastro sistema = SistemaCadastro();
  sistema.iniciar();
}

void adicionarCadastro() {
  stdout.write('Digite o nome: ');
  String nome = stdin.readLineSync()!;

  stdout.write('Digite o e-mail: ');
  String email = stdin.readLineSync()!;

  cadastros.add({'nome': nome, 'email': email});
  print("✅ Cadastro adicionado com sucesso!");
}

void listarCadastros() {
  if (cadastros.isEmpty) {
    print("📭 Nenhum cadastro encontrado.");
    return;
  }

  print("\n📋 Lista de cadastros:");
  for (int i = 0; i < cadastros.length; i++) {
    print(
      "${i + 1}. Nome: ${cadastros[i]['nome']}, E-mail: ${cadastros[i]['email']}",
    );
  }
}
