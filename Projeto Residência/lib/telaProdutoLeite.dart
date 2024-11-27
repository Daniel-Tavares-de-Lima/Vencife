import 'package:flutter/material.dart';
import 'package:helloworld/main.dart';

class TelaProdutoLeite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelaProd(),
    );
  }
}

class TelaProd extends StatelessWidget {
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
            // Imagem e Coração
            Center(
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'assets/images/leite.png',
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: IconButton(
                      icon: Icon(Icons.favorite_border, color: Colors.red),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            // Nome e Avaliação
            Text(
              "Leite Itambé 1 Litros",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Icon(Icons.store, size: 16, color: Colors.grey),
                SizedBox(width: 4),
                Text(
                  "Loja 1",
                  style: TextStyle(color: Colors.grey),
                ),
                Spacer(),
                Row(
                  children: List.generate(
                    5,
                    (index) => Icon(
                      index < 4 ? Icons.star : Icons.star_border,
                      color: Colors.amber,
                      size: 16,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            // Preço
            Text(
              "R\$ 2,80",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 8),
            // Descrição
            Text(
              "Descrição",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Text(
              "Lorem ipsum dolor sit amet consectetur. "
              "Scelerisque sed rhoncus commodo a. Morbi vulputate nunc "
              "dis quis purus ultrices a.",
              style: TextStyle(color: Colors.grey[700]),
            ),
            SizedBox(height: 16),
            // Entrega e Validade
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Entrega
                Column(
                  children: [
                    Icon(Icons.access_time, color: Colors.green),
                    SizedBox(height: 4),
                    Text(
                      "Entrega\n20 - 30 min",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                    ),
                  ],
                ),
                // Validade
                Column(
                  children: [
                    Icon(Icons.calendar_today, color: Colors.orange),
                    SizedBox(height: 4),
                    Text(
                      "Validade\nVAL: 01/12/24",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            // Botões
            Row(
              children: [
                // Botão Comprar
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      padding: EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Comprar",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                // Controle de Quantidade
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.remove, color: Colors.grey),
                    ),
                    Text(
                      "1",
                      style: TextStyle(fontSize: 16),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
