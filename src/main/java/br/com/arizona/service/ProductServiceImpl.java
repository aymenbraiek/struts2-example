package br.com.arizona.service;

import br.com.arizona.dao.ProductDAO;
import br.com.arizona.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * User: diego
 * Date: 02/09/13
 * Time: 14:04
 */
@Service
public class ProductServiceImpl extends GenericServiceImpl<Product, Long, ProductDAO> implements ProductService {

    @Autowired
    private ProductDAO dao;

    public ProductDAO dao() {
        return dao;
    }
}
