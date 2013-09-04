package br.com.arizona.dao.jpa;

import br.com.arizona.dao.ProductDAO;
import br.com.arizona.model.Product;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAOJpa extends GenericDAOJpa<Product, Long> implements ProductDAO {
}
