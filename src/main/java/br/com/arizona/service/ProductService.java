package br.com.arizona.service;

import br.com.arizona.dao.ProductDAO;
import br.com.arizona.model.Product;

/**
 * User: diego
 * Date: 02/09/13
 * Time: 13:45
 */
public interface ProductService extends GenericService<Product, Long, ProductDAO> {
}
