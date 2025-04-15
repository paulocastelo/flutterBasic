import 'dart:io';
void main() {
  // o programa começa aqui
  
  // Exibindo uma mensagem no console
  print("Bem-vindo à Jornada Flutter com Dart, Mr. Anderson!");

  // ---------- Variáveis com tipo explícito ----------
  int idade = 43;
  String name = "Mr. Anderson";
  String estadoCivil = "Casado";
  bool ativo = true;

  print("Nome: $name");
  print("Idade: $idade");
  print("Está ativo: $ativo");

    // ---------- Variáveis com tipo inferido (usando var) ----------
var cidade = "Brasilia";
var temperatura = 29.5;
var conectado = false;
print("Cidade: $cidade");
print("Temperatura: $temperatura");
print("Conectado: $conectado");

// ---------- Operações matemáticas ----------
int a =  10;
int b = 3;

print("Sum: ${a + b}");
print("Subtraction: ${a - b}");
print("Multiplication: ${a * b}");
print("Real division: ${a / b}");
print("Integer division: ${a ~/ b}");
print("Remainder: ${a % b}");

// ---------- Condicional simples ----------
if (idade >= 18){
  print("Maior de idade");
} else {
  print("Menor de idade");
}

// ---------- Condicional composta ----------
if (idade >= 18 && conectado == true){
  print("Maior de idade e conectado");
} else if (idade >= 18 && conectado == false){
  print("Maior de idade e desconectado");
} else {
  print("Menor de idade");
}

// ---------- Print with variables ----------
print("Olá, meu nome é $name, tenho $idade anos, sou $estadoCivil e moro em $cidade.");

(idade % 2 ==0) ? print("Idade par") : print("Idade ímpar");
(idade % 2 ==0 && conectado == true) ? print("Idade par e conectado") : print("Idade ímpar ou desconectado");

// ---------- Challenge: Calculate value in Fahrenheit ----------
double celsius = 25.0;
double fahrenheit = (celsius * 9/5) + 32;
print("Temperatura em Fahrenheit: $fahrenheit");

}