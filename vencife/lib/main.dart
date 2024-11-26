import 'package:flutter/material.dart';

void main() => runApp(MeuApp());

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TelaInicial(),
    );
  }
}

class TelaInicial extends StatelessWidget {
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
            crossAxisAlignment: CrossAxisAlignment.center, // Centraliza tudo
            children: [
              // Barra de pesquisa
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Pesquisar",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.grey[200],
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

              SizedBox(height: 16),

              // Promoções
              Text("Promoções",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Container(
                height: 150,
                color: Colors.grey[300],
                margin: EdgeInsets.symmetric(vertical: 16),
              ),

              // Produtos
              Text("Produtos",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 100,
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Centraliza as categorias
                  children: [
                    _iconeCategoria("Frutas", Icons.apple),
                    SizedBox(width: 16), // Adiciona um espaço entre os ícones
                    _iconeCategoria("Legumes", Icons.grass),
                    SizedBox(width: 16), // Adiciona um espaço entre os ícones
                    _iconeCategoria("Laticínios", Icons.icecream),
                    SizedBox(width: 16), // Adiciona um espaço entre os ícones
                    _iconeCategoria("Grãos", Icons.spa),
                  ],
                ),
              ),

              SizedBox(height: 16),

              // Produtos Perto de Você
              Text("Perto de Você",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Center(
                child: SizedBox(
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _cartaoProduto("Leite Desna", "R\$ 2,80", "30/06/24"),
                      _cartaoProduto(
                          "Carne bovina", "R\$ 16,70/kg", "14/06/24"),
                      _cartaoProduto(
                          "Arroz", "R\$ 4,50", "01/07/24"), // Novo produto
                    ],
                  ),
                ),
              ),

              SizedBox(height: 16),

              // Sugestões da Comunidade
              Text("Sugerido pela Comunidade",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Center(
                child: SizedBox(
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _cartaoProduto(
                          "Queijo muçarela", "R\$ 21,70/kg", "11/06/24"),
                      _cartaoProduto(
                          "Patê sabor presunto", "R\$ 8,70/kg", "11/06/24"),
                      _cartaoProduto("Pão integral", "R\$ 3,20",
                          "05/06/24"), // Novo produto
                    ],
                  ),
                ),
              ),

              SizedBox(height: 16),

              // Produtos Populares
              Text("Populares",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Center(
                child: SizedBox(
                  height: 80,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _lojaPopular("Mercado do Zé"),
                      _lojaPopular("Mercearia Bom Prato"),
                      _lojaPopular("Bons Preços"),
                      _lojaPopular("Supermercado Mix"), // Nova loja popular
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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

  // Widget para categorias
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

  // Widget para produtos
  Widget _cartaoProduto(String nome, String preco, String validade) {
    return Container(
      width: 100,
      margin: EdgeInsets.only(right: 8),
      child: Column(
        children: [
          Container(
            width: 100,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(child: Icon(Icons.fastfood, size: 30)),
          ),
          SizedBox(height: 8),
          Text(nome,
              style: TextStyle(fontSize: 12), textAlign: TextAlign.center),
          Text(preco,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
          Text("VAL: $validade",
              style: TextStyle(fontSize: 10, color: Colors.grey)),
        ],
      ),
    );
  }

  // Widget para lojas populares
  Widget _lojaPopular(String nome) {
    return Container(
      width: 80,
      margin: EdgeInsets.only(right: 8),
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text(
                nome[0],
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
          SizedBox(height: 4),
          Text(nome,
              style: TextStyle(fontSize: 12), textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
