import 'dart:io';
main(){

  // Controle de repetições
  // for, while e do while
  // for
  print("---------Utilizando for:---------");
  print("Imprimindo os números de 0 a 9 utilizando for");
  // int ? numero = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < 10; i++){
    print("O valor de i é: $i");
  }

  // while
  print("---------Utilizando while:---------");
  print("Imprimindo os números de 0 a 9 utilizando while");
  // int ? numero2 = int.parse(stdin.readLineSync()!);
  int i = 0;
  while (i < 10){
    print("O valor de i é: $i");
    i++;
  }

  // do while
  print("---------Utilizando do while:---------");
  print("Imprimindo os números de 0 a 9 utilizando do while");
  // int ? numero3 = int.parse(stdin.readLineSync()!);
  int j = 0;
  do {
    print("O valor de j é: $j");
    j++;
  } while (j < 10);

  // for in
  print("---------Utilizando for in:---------");
  print("Imprimindo os valores de uma lista utilizando for in");
  List<String> lista = ["A", "B", "C", "D"];
  for (var a in lista){
    print("O valor de a é: $a");
  }

  // Utilizando o break
  print("---------Utilizando break:---------");
  print("Imprimindo os números de 0 a 9 utilizando break");
  int numero4 = 10;
  for (int i = 0; i < 10; i++){
    if (i == 5){
      break;
    }
    print("O valor de i é: $i");
  }

  // Utilizando o continue
  print("---------Utilizando continue:---------");
  print("Imprimindo os números de 0 a 9 utilizando continue");
  int numero5 = 10;
  for (int i = 0; i < 10; i++){
    if (i == 5){
      continue;
    }
    print("O valor de i é: $i");
  }
}