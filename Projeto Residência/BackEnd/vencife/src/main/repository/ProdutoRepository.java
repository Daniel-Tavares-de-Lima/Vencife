package main.repository;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface ProdutoRepository extends JpaRepository<Produto, Long> {
    List<Produto> findBySugeridoPelaComunidadeTrue();  // Buscar produtos sugeridos pela comunidade
}
