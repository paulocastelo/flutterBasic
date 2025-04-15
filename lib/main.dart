import 'package:flutter/material.dart';
// Importa os componentes visuais baseados no Material Design (botões, textos, colunas, etc.)

void main() {
  runApp(const MyApp());
  // Função principal do app. Chama o widget raiz chamado MyApp
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Este widget é a raiz da sua aplicação.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // Título do app. Pode ser usado em abas ou dispositivos que exibem esse nome.

      theme: ThemeData(
        // Este é o tema da sua aplicação.
        //
        // EXPERIMENTE: Rode sua aplicação com "flutter run". Você verá
        // que ela tem uma barra superior roxa. Sem fechar o app, mude a
        // cor abaixo de `Colors.deepPurple` para `Colors.green`, por exemplo.
        //
        // Salve o arquivo ou clique em "Hot Reload" no seu editor (ou pressione "r" no terminal).
        // Isso atualizará o app **sem reiniciar o estado** (o valor do contador será mantido).
        //
        // A maioria das alterações de código visuais pode ser testada com apenas um "Hot Reload".
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),

      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // Define a tela principal do aplicativo como sendo a MyHomePage
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // Este widget é a página inicial do seu app.
  // Ela é *stateful*, o que significa que guarda um estado (como o contador).
  //
  // Esta classe é a configuração desse estado.
  // Ela guarda os valores fornecidos pelo widget pai (neste caso, o MyApp)
  // e que serão usados pelo método build do estado (abaixo).
  // Campos de um widget são sempre marcados como "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  // Variável de estado: começa em zero e aumenta quando o botão é pressionado

  void _incrementCounter() {
    setState(() {
      // Este método diz ao Flutter que o estado mudou.
      // Isso força a reconstrução da interface, chamando o método build() novamente
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Este método é chamado toda vez que setState() for executado
    //
    // O Flutter é otimizado para reconstruir a interface rapidamente.
    // Assim, você pode chamar build() quantas vezes quiser sem prejudicar a performance.

    return Scaffold(
      // Scaffold fornece a estrutura básica da tela (barra de app, corpo e botão flutuante)

      appBar: AppBar(
        // EXPERIMENTE: Altere a cor aqui para Colors.amber e veja a AppBar mudar com o Hot Reload
        // backgroundColor: Colors.amber,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        // Usa o título que foi passado ao widget MyHomePage
        title: Text(widget.title),
      ),

      body: Center(
        // Centraliza o conteúdo no meio da tela
        child: Column(
          // Coloca os widgets filhos um embaixo do outro
          //
          // A coluna se adapta em largura aos filhos e tenta ocupar toda a altura do pai
          // Usamos o mainAxisAlignment para centralizar os filhos verticalmente

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Você apertou o botão esta quantidade de vezes:',
            ),
            Text(
              '$_counter', // Exibe o valor atual do contador
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              // Exibe se o número é par ou ímpar e aplica cor azul para par e verde para ímpar
              _counter % 2 == 0 ? 'Número par' : 'Número ímpar',
              style: TextStyle(
                fontSize: 32,
                color: (_counter % 2 == 0) ? Colors.blue : Colors.red,
                fontWeight: FontWeight.bold, // Aplica cor azul para par e verde para ímpar
              ), //TextStyle
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter, // Quando o botão é pressionado, incrementa o contador
        tooltip: 'Incrementar',
        child: const Icon(Icons.add), // Ícone de "+"
        backgroundColor: const Color.fromARGB(255, 255, 179, 1), // Cor de fundo do botão flutuante
      ), // Esta vírgula final permite uma autoformatação melhor do código
    );
  }
}
