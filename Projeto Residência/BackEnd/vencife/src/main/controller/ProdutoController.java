package main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/produtos")
public class ProdutoController {

    @Autowired
    private ProdutoService produtoService;

    // Listar todos os produtos sugeridos pela comunidade
    @GetMapping("/sugeridos")
    public List<Produto> listarProdutosSugeridos() {
        return produtoService.buscarProdutosSugeridos();
    }

    // Cadastrar um novo produto sugerido pela comunidade
    @PostMapping("/adicionar")
    public ResponseEntity<Produto> cadastrarProduto(@RequestBody Produto produto) {
        produto.setSugeridoPelaComunidade(true);  // Definir que o produto foi sugerido pela comunidade
        Produto novoProduto = produtoService.cadastrarProduto(produto);
        return ResponseEntity.ok(novoProduto);
    }

    // Outros endpoints já implementados...
}
