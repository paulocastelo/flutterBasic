import 'dart:io';

void main (){
  print("Digite o preço do produto:");
  double preco = double.parse(stdin.readLineSync()!); // converte a string para double
  print("Digite o valor do desconto:");
  double valorDesconto = double.parse(stdin.readLineSync()!); // converte a string para double
  // Chamada da função
  Map<String, double> resultado = calcularDesconto(preco, valorDesconto);

  // Exibe os resultados
  print("Valor final: R\$${resultado["valorfinal"]!.toStringAsFixed(2)}");
  print("Economia: R\$${resultado["economia"]!.toStringAsFixed(2)}");
}

// Define a função calcularDesconto
Map<String, double> calcularDesconto(double preco, double desconto){
  if(preco <= 0 || desconto < 0){
    return {
      "valorfinal": 0,
      "economia": 0,
    };
  }
  double valorFinal = preco * (1-desconto/100);
  double economia = preco - valorFinal;
  // Retorna um mapa com os resultados que pode ser recuperado por chave
  return {
    "Valor final" : valorFinal,
    "economia": economia,
  };
}