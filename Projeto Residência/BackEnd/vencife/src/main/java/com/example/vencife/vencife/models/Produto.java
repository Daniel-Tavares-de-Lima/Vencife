


import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
public class Produto {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    private String nome;

    @NotNull
    private String preco;

    @NotNull
    private String validade;

    @NotNull
    private String imagem;

    @ManyToOne
    @JoinColumn(name = "categoria_id", nullable = false)
    private Categoria categoria;

    @NotNull
    private boolean sugeridoPelaComunidade;  // Novo campo

    // Getters e Setters

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return this.nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getPreco() {
        return this.preco;
    }

    public void setPreco(String preco) {
        this.preco = preco;
    }

    public String getValidade() {
        return this.validade;
    }

    public void setValidade(String validade) {
        this.validade = validade;
    }

    public String getImagem() {
        return this.imagem;
    }

    public void setImagem(String imagem) {
        this.imagem = imagem;
    }

    public Categoria getCategoria() {
        return this.categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }

    public boolean isSugeridoPelaComunidade() {
        return this.sugeridoPelaComunidade;
    }

    public boolean getSugeridoPelaComunidade() {
        return this.sugeridoPelaComunidade;
    }

    public void setSugeridoPelaComunidade(boolean sugeridoPelaComunidade) {
        this.sugeridoPelaComunidade = sugeridoPelaComunidade;
    }

}
