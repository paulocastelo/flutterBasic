import 'dart:io';
void main(){
  // Função simples
  void saudacao(){
    print('Olá, seja bem-vindo!');
    print('Estudo de funções e escopo em Dart');
  }
  // Invocando a função
  saudacao();

  // Função com parâmetro

  print('Digite seu nome:');
  String nome = stdin.readLineSync()!;
  void saudacaoComNome(String nome){
    print('Olá, $nome! Seja bem-vindo!');
  }
  // Invocando a função
  saudacaoComNome(nome);

  // Função com retorno
  print('Digite o primeiro e último nome:');
  String nomeCompleto = stdin.readLineSync()!;
  // Cria array com o nome completo
  List<String> nomeArray = nomeCompleto.split(' ');
  // Cria variáveis para o primeiro e último nome
  String primeiroNome = nomeArray[0];
  String segundoNome = nomeArray[1];
  
  // Função com retorno
  print("Digite sua idade:");
  int idade = int.parse(stdin.readLineSync()!);
  String saudacaoComIdade(String primeiroNome, String segundoNome, int idade){
    return 'Olá, $primeiroNome $segundoNome! Você tem $idade anos.';
  }
  // Invocando a função
  String resultado = saudacaoComIdade(primeiroNome, segundoNome, idade);
  print(resultado);


  // Função com retorno e parâmetro opcional
  print("Digite seu sobrenome:");
  String sobrenome = stdin.readLineSync()!;
  String saudacaoComSobrenome(String primeiroNome, String sobrenome, [String segundoNome = 'Silva']){
    return 'Olá, $primeiroNome $sobrenome $segundoNome! Seja bem-vindo!';
  }
  // Invocando a função
  String resultadoSobrenome = saudacaoComSobrenome(primeiroNome, sobrenome);
  print(resultadoSobrenome);

  // Função com parâmetro nomeado
  String saudacaoComNomeado({required String nome, required String sobrenome}){
    return 'Olá, $nome $sobrenome! Seja bem-vindo!';
  }
  // Invocando a função
  String resultadoNomeado = saudacaoComNomeado(nome: nome, sobrenome: sobrenome);
  print(resultadoNomeado);

  // Função anônima
  var quadrado = (int x) => x * x;
  int algarismo = 8;
  print('O quadrado de $algarismo é: ${quadrado(algarismo)}');

  // Escopos de variáveis
  int global = 100;

void mostrarValores() {
  int local = 10;
  print("Global: $global"); // ok
  print("Local: $local");   // ok
}
  print(global); // ok
  // print(local);  // ❌ erro, local só existe dentro da função

}