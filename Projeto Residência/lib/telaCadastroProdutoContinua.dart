import 'package:flutter/material.dart';

class TelaAdicionarProduto extends StatefulWidget {
  @override
  _TelaAdicionarProdutoState createState() => _TelaAdicionarProdutoState();
}

class _TelaAdicionarProdutoState extends State<TelaAdicionarProduto> {
  final TextEditingController _precoController = TextEditingController();
  final TextEditingController _dataVencimentoController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.orange),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.orange),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Texto título
            Text(
              'Dados produto',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 24),

            // Campo para anexar foto
            GestureDetector(
              onTap: () {
                // Aqui você pode adicionar a lógica para anexar a foto
              },
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey),
                ),
                child: Center(
                  child: Icon(
                    Icons.add_a_photo,
                    size: 40,
                    color: Colors.orange,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),

            // Campo de data de vencimento
            TextFormField(
              controller: _dataVencimentoController,
              decoration: InputDecoration(
                labelText: 'Data de Vencimento*',
                hintText: 'dd/mm/aaaa',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: 16),

            // Campo de preço
            TextFormField(
              controller: _precoController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(
                labelText: 'Preço*',
                prefixText: 'R\$ ',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: 24),

            // Botão de confirmação
            ElevatedButton(
              onPressed: () {
                // Aqui você pode adicionar a lógica para salvar os dados
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange, // Cor do botão
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.symmetric(vertical: 16),
              ),
              child: Text(
                'Confirmar',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
 