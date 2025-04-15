
import 'dart:io';
void main (){
  print("Digite seu nome:");
  String ? name = stdin.readLineSync(); // pode retornar null
  name = name ?? "Visitante"; // se o nome for null, atribui "Visitante"
  print("Digite sua idade:");
  int idade = int.parse(stdin.readLineSync()!); // converte a string para inteiro

  print("Você está conectado? (s/n)");
  bool ? conectado = stdin.readLineSync() == "s" ? true : false; // converte a string para booleano

    // ---------- Decisões ----------
    print("\n📋 Análise:");
    if(idade>= 18 && conectado==true){
      print("Bem-vindo, $name! Você é maior de idade e está conectado.");
    } else if (idade >= 18 && !conectado) {
      print("Bem-vindo, $name! Você é maior de idade e não está conectado.");
    } else {
      print("Oi, $name. Você ainda é menor de idade.");
    }
    
    // ---------- Extra: par ou ímpar ----------
    // print("Sua idade é $idade % 2 == 0 ? "par" : "ímpar"}.");


  // ---------- Condicionais e Entrada de Dados ----------
  // Exemplo de uso do operador ternário
  // int idade = 20;
  String resultado = (idade >= 18) 
    ? "Olá $name, você é um adulto" 
    : (idade >= 12 && idade <18) 
      ? "Olá $name, você é um adolescente" 
      : "Você é uma criança";
    

  print("Digite sua idade:");
  int idadeuser = int.parse(stdin.readLineSync()!);// converte a string para inteiro
  print("Você tem documento? (s/n)");
  bool comDocumento = stdin.readLineSync() == "s" ? true : false; // converte a string para booleano
  if(idadeuser >= 18 && comDocumento == true){
    print("Você pode dirigir.");
  } else if (idadeuser >= 18 && comDocumento == false){
    print("Você não pode dirigir, mas pode tirar a habilitação.");
  } else {
    print("Você não pode dirigir.");}

  // ---------- Desafio: Calcular valor de IMC ----------
  print("Digite seu peso (em kg):");
  double peso = double.parse(stdin.readLineSync()!); // converte a string para double
  print("Digite sua altura (em metros):");
  double altura = double.parse(stdin.readLineSync()!); // converte a string para double
  double imc = peso / (altura * altura);

  print("Seu IMC é: $imc");
  if(imc >=  30.0){
    print("Você está em um quadro de obesidade.");
  } else if (imc >= 25.0 && imc < 30.0){
    print("Você está em sobrepeso.");
  } else if (imc >= 18.5 && imc < 25.0){
    print("Você está no peso normal");
  } else {
    print("Você está abaixo do peso.");
  }
  
  // ---------- Desafio: Autenticador simples ----------
  print("Digite seu usuário:");
  String ? usuario = stdin.readLineSync(); // pode retornar null
  print("Digite sua senha:");
  String ? senha = stdin.readLineSync(); // pode retornar null
  String usuarioCorreto = "admin";
  String senhaCorreta = "1234";
  bool autenticado = false;
  // Solução utilizando if
  if(usuario==usuarioCorreto && senha==senhaCorreta){
    print("Acesso permitido");
    autenticado = true;
  } else{
    print("Acesso negado");
    autenticado = false;
  }
  // Solução utilizando operador ternário
  String resultadoAutenticacao = (usuario == usuarioCorreto && senha == senhaCorreta) 
    ? "Acesso permitido" 
    : "Acesso negado";

    // ---------- Desafio: Desconto aplicado ----------
    print("Digite o valor da compra:");
    double valorCompra = double.parse(stdin.readLineSync()!); // converte a string para double
    print("Digite o valor do desconto:");
    double valorDesconto = double.parse(stdin.readLineSync()!); // converte a string para double
    double valorFinal = valorCompra - valorDesconto;
    print("O valor final da compra é: $valorFinal");

  // ---------- Desafio: Calculadora de desconto com login ----------
  if(autenticado==true){
    print("Digite o valor da compra:");
    double valorCompra = double.parse(stdin.readLineSync()!); // converte a string para double
    print("Digite o valor do desconto:");
    double valorDesconto = double.parse(stdin.readLineSync()!); // converte a string para double
    double valorFinal = valorCompra - valorDesconto;
    print("O valor final da compra é: $valorFinal");
  } else {
    print("Acesso negado. Você não pode calcular o desconto.");
  }

  // ---------- Desafio: Calculadora de desconto com login e loops de tentativas ----------
  int tentativas = 3;
  while(tentativas > 0 && autenticado == false){
    print("Digite seu usuário:");
    String ? usuario = stdin.readLineSync(); // pode retornar null
    print("Digite sua senha:");
    String ? senha = stdin.readLineSync(); // pode retornar null
    String usuarioCorreto = "admin";
    String senhaCorreta = "1234";
    if(usuario==usuarioCorreto && senha==senhaCorreta){
      print("Acesso permitido");
      autenticado = true;
    } else {
      print("Acesso negado");
      tentativas--;
      print("Você ainda tem $tentativas tentativas.");
    }
    if(tentativas == 0){
      print("Número de tentativas excedidas. 🚫 Seu usuário foi bloqueado.");
    }
  }

  // ---------- Desafio: Loops de cálculos de descontos  ----------
  while(true){
    stdout.write("🛒 Nome do produto (ou digite 'sair'): ");
    String ? produto = stdin.readLineSync(); // pode retornar null

    if (produto == null || produto.toLowerCase() == "sair") {
      print("\n👋 Encerrando calculadora. Até logo!");
      break; // sai do loop
    }
    
    stdout.write("💰 Preço original (R\$): "); 


  }
}