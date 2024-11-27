import 'package:flutter/material.dart';
import "package:helloworld/telaProdutoLeite.dart";
import "package:helloworld/telaProdutoCarne.dart";
import "package:helloworld/telaProdutoCebola.dart";
import "package:helloworld/telaProdutoPresunto.dart";
import "package:helloworld/telaProdutoQueijoTomate.dart";
import "package:helloworld/telaProdutoQueijo.dart";
import "package:helloworld/telaProdutoCadastro.dart"; // Importando a tela de adicionar produto

void main() => runApp(MeuApp());

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TelaInicial(),
    );
  }
}

class TelaInicial extends StatefulWidget {
  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  int _indiceSelecionado = 0;

  // Função para controlar a navegação na BottomNavigationBar
  void _onItemTapped(int index) {
    setState(() {
      _indiceSelecionado = index;
    });

    // Navega para a tela correspondente ao botão "Adicionar"
    if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                TelaProdutoCadastro()), // Navega para a tela de adicionar produto
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.account_circle, size: 30, color: Colors.black),
            SizedBox(width: 8),
            Text("Usuário", style: TextStyle(color: Colors.black)),
            Spacer(),
            Icon(Icons.notifications_none, color: Colors.black),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Barra de pesquisa
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Pesquisar",
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.grey[200],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  IconButton(
                    icon: Icon(Icons.filter_alt),
                    onPressed: () {},
                  ),
                ],
              ),

              SizedBox(height: 15),

              // Promoções
              Text("Promoções",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Container(
                height: 150,
                color: Colors.grey[300],
                margin: EdgeInsets.symmetric(vertical: 10),
              ),

              // Produtos
              Text("Produtos",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _iconeCategoria("Frutas", Icons.apple),
                    SizedBox(width: 16),
                    _iconeCategoria("Legumes", Icons.grass),
                    SizedBox(width: 16),
                    _iconeCategoria("Laticínios", Icons.icecream),
                    SizedBox(width: 16),
                    _iconeCategoria("Grãos", Icons.spa),
                  ],
                ),
              ),

              SizedBox(height: 16),

              // Seção "Perto de Você"
              Text("Perto de Você",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    // Leite Desnatado: Redireciona para outra tela
                    _cartaoProduto(
                      "Leite Desna",
                      "R\$ 2,80",
                      "01/12/24",
                      "assets/images/leite.png",
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TelaProdutoLeite(),
                          ),
                        );
                      },
                    ),
                    // Outros produtos
                    _cartaoProduto(
                      "Carne Bovina",
                      "R\$ 16,70/kg",
                      "02/12/24",
                      "assets/images/carne.png",
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TelaProdutoCarne(),
                          ),
                        );
                      },
                    ),
                    _cartaoProduto(
                      "Cebola",
                      "R\$",
                      "04/12/24",
                      "assets/images/cebola.png",
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TelaProdutoCebola(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16),

              // Sugestões da Comunidade
              Text("Sugerido pela Comunidade",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _cartaoProduto("Queijo muçarela", "R\$ 21,70/kg",
                        "11/06/24", "assets/images/queijo.png", () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TelaProdutoQueijo(),
                        ),
                      );
                    }),
                    _cartaoProduto("Patê presunto", "R\$ 8,70/kg", "11/06/24",
                        "assets/images/presunto.png", () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TelaProdutoPresunto(),
                        ),
                      );
                    }),
                    _cartaoProduto("Pão integral", "R\$ 3,20", "05/06/24",
                        "assets/images/tomate.png", () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TelaProdutoQueijoTomate(),
                        ),
                      );
                    }),
                  ],
                ),
              ),

              SizedBox(height: 26),

              // Produtos Populares
              Text("Populares",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Center(
                child: SizedBox(
                  height: 80,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _lojaPopular("Mercado do Zé", Icons.store),
                      _lojaPopular("Mercearia Bom Prato", Icons.shopping_cart),
                      _lojaPopular("Bons Preços", Icons.local_offer),
                      _lojaPopular(
                          "Supermercado Mix", Icons.supervisor_account),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 26)
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceSelecionado,
        onTap: _onItemTapped, // Chamando a função de navegação
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Início"),
          BottomNavigationBarItem(
              icon: Icon(Icons.people), label: "Comunidade"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline), label: "Adicionar"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: "Favoritos"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Pesquisar"),
        ],
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
      ),
    );
  }

  Widget _iconeCategoria(String rotulo, IconData icone) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Color(0xFF1C6E5B),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(icone, color: Colors.white, size: 30),
        ),
        SizedBox(height: 4),
        Text(rotulo, style: TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _cartaoProduto(String nome, String preco, String validade,
      String caminhoImagem, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 120,
        margin: EdgeInsets.only(right: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage(caminhoImagem), fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 8),
            Text(nome, style: TextStyle(fontSize: 14)),
            Text(preco, style: TextStyle(fontSize: 12, color: Colors.grey)),
            Text(validade, style: TextStyle(fontSize: 12, color: Colors.grey)),
          ],
        ),
      ),
    );
  }

  Widget _lojaPopular(String nome, IconData icone) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.orange,
            radius: 28,
            child: Icon(icone, color: Colors.white, size: 30),
          ),
          SizedBox(height: 8),
          Text(nome),
        ],
      ),
    );
  }
}
