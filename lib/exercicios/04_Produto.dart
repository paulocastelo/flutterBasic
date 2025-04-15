import 'dart:io';
main(){
  // Instancia um produto utilizando o construtor padrão
  print("--------------------------------");
  print("Criando com produto com o construtor padrão");
  Produto p1 = Produto();
  print("Digite o nome do produto:");
  String ? n1 = stdin.readLineSync(); // pode retornar null
  print("Digite o preço do produto:");
  double ? preco1 = double.parse(stdin.readLineSync()!);
  print("Digite o desconto do produto:");
  double ? desconto1 = double.parse(stdin.readLineSync()!);

  // Atribui valores ao produto
  p1.nome = n1!;
  p1.preco = preco1!;
  p1.desconto = desconto1!;
  
  p1.exibirResumo();

  // Instancia um produto utilizando o construtor com parâmetros
  print("--------------------------------");
  print("Criando com produto com o construtor com parâmetros");
  Produto p2 = Produto.nomePreco("Produto 2", 100.0);
  p2.desconto = 10.0;
  p2.exibirResumo();

  // Instancia um produto utilizando o construtor com parâmetros
  print("--------------------------------");
  print("Criando com produto com o construtor com parâmetros");
  Produto p3 = Produto.nomePrecoDesconto("Produto 3", 200.0, 20.0);
  p3.exibirResumo();


}

class Produto {
  String nome = "A definir";
  double preco = 0.0;
  double desconto = 0.0;

  // Construtor padrão
  Produto();

  // Construtor com parâmetros nome e preco
  Produto.nomePreco(this.nome, this.preco);

  // Construtor com parâmetros nome, preco e desconto
  Produto.nomePrecoDesconto(this.nome, this.preco, this.desconto);

  double get valorFinal{
    if(preco <= 0 || desconto < 0 || desconto > 100){
      return 0;
    }
    return preco * (1 - desconto / 100);
  }

  double get economia {
    return preco - valorFinal;
  }

  //Método para exibir resumo
  void exibirResumo(){
    print("📦 Produto: $nome");
    print("💰 Preço original: R\$${preco.toStringAsFixed(2)}");
    print("🔻 Desconto: ${desconto.toStringAsFixed(1)}%");
    print("✅ Valor final: R\$${valorFinal.toStringAsFixed(2)}");
    print("🎉 Economia: R\$${economia.toStringAsFixed(2)}");
    print("--------------------------------");
  }
}