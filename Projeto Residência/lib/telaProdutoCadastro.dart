import 'package:flutter/material.dart';
import 'package:helloworld/main.dart';
import 'package:helloworld/telaCadastroProdutoContinua.dart';

class TelaProdutoCadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelaProdCadastro(),
    );
  }
}

class TelaProdCadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TelaInicial(),
              ),
            );
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título
            Text(
              "Dados produto",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            // Nome produto
            TextField(
              decoration: InputDecoration(
                labelText: "Nome produto*",
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                hintText: "Leite, mel, cebola ....",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 16),
            // Loja
            TextField(
              decoration: InputDecoration(
                labelText: "Loja*",
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                hintText: "Mercado João, Padaria Esq...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 16),
            // CNPJ
            TextField(
              decoration: InputDecoration(
                labelText: "CNPJ*",
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                hintText: "XXX. XXX/0001-XX",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 16),
            // Endereço loja
            TextField(
              decoration: InputDecoration(
                labelText: "Endereço loja*",
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                hintText: "Rua XXX, Bairro XXX, N° XX",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            Spacer(),
            // Botão Continuar
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TelaAdicionarProduto(),
                    ),
                  );
                },
                child: Text(
                  "Continuar",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
