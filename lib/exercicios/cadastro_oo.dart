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
  final List<Pessoa> _cadastros = [];

  void iniciar() {
    while (true) {
      print("\n==== MENU ====");
      print("1. Adicionar cadastro");
      print("2. Listar cadastros");
      print("3. Sair");

      stdout.write("Escolha uma opção: ");
      String? opcao = stdin.readLineSync();

      switch (opcao) {
        case '1':
          _adicionarCadastro();
          break;
        case '2':
          _listarCadastros();
          break;
        case '3':
          print("Saindo do sistema...");
          exit(0);
        default:
          print("❌ Opção inválida. Tente novamente.");
      }
    }
  }

  void _adicionarCadastro() {
    stdout.write('Digite o nome: ');
    String nome = stdin.readLineSync()!;

    stdout.write('Digite o e-mail: ');
    String email = stdin.readLineSync()!;

    _cadastros.add(Pessoa(nome, email));
    print("✅ Cadastro adicionado com sucesso!");
  }

  void _listarCadastros() {
    if (_cadastros.isEmpty) {
      print("📭 Nenhum cadastro encontrado.");
      return;
    }

    print("\n📋 Lista de cadastros:");
    for (int i = 0; i < _cadastros.length; i++) {
      print("${i + 1}. ");
      _cadastros[i].exibirResumo();
    }
  }
}

void main() {
  SistemaCadastro sistema = SistemaCadastro();
  sistema.iniciar();
}
