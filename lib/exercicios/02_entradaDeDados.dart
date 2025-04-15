import 'dart:io';
void main() {

  String ? name;
  while(name == null || name.isEmpty) {
    print("Digite o seu nome:");
    name = stdin.readLineSync();
  }

  print("Olá, $name! Bem-vindo à Jornada Flutter com Dart");
}