package br.com.arizona.controller;

import java.util.Collection;
import java.util.List;
import java.util.Locale;

import org.apache.commons.lang.StringUtils;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.apache.struts2.rest.DefaultHttpHeaders;
import org.apache.struts2.rest.HttpHeaders;
import org.springframework.beans.factory.annotation.Autowired;

import br.com.arizona.model.Product;
import br.com.arizona.model.Provider;
import br.com.arizona.service.ProductService;
import br.com.arizona.service.ProviderService;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Validateable;

@Results({
    @Result(name="success", type="redirectAction", params = {"actionName" , "products"}),
    @Result(name="deleteConfirm", location = "products-deleteConfirm"),
    @Result(name="show", location = "products-show"),
    @Result(name="editNew", location = "products-editNew"),
    @Result(name="edit", location = "products-edit"),
    @Result(name="index", location = "products-index")
})
public class ProductsController extends ActionSupport implements ModelDriven<Object>, Validateable {

    private static final long serialVersionUID = -2095888541799554476L;
    public static final String REQUIRED_FIELD = "required.field";

    private Product model = new Product();
    private Long id;
    private Collection<Product> list;

    @Autowired
    private ProductService productService;

    @Autowired
    private ProviderService providerService;

    // GET /products/1
    public HttpHeaders show() {
        return new DefaultHttpHeaders("show");
    }

    // GET /products
    public HttpHeaders index() {
        list = productService.findAll();
        return new DefaultHttpHeaders("index")
            .disableCaching();
    }
    
    // GET /products/1/edit
    public String edit() {
        return "edit";
    }

    // GET /products/new
    public String editNew() {
        model = new Product();
        return "editNew";
    }

    // GET /products/1/deleteConfirm
    public String deleteConfirm() {
        return "deleteConfirm";
    }

    // DELETE /products/1
    public String destroy() {
        productService.delete(model);
        addActionMessage("Order removed successfully");
        return "success";
    }

    // POST /products
    public HttpHeaders create() {
        productService.save(model);
        addActionMessage("New order created successfully");
        return new DefaultHttpHeaders("success")
            .setLocationId(model.getId());
    }

    // PUT /products/1
    public String update() {
        productService.update(model);
        addActionMessage("Order updated successfully");
        return "success";
    }

    public void validate() {
        if (StringUtils.isBlank(model.getName())) {
            addFieldError("name", getText(REQUIRED_FIELD));
        }

        if (model.getPrice() == null) {
            addFieldError("price", getText(REQUIRED_FIELD));
        }

        if (model.getProvider() == null) {
            addFieldError("provider.id", getText(REQUIRED_FIELD));
        }
    }

    public void setId(Long id) {
        if (id != null) {
            this.model = productService.findById(id);
        }
        this.id = id;
    }
    
    public Long getId() {
    	return this.id;
    }
    
    public Object getModel() {
        return (list != null ? list : model);
    }

    public List<Provider> getProviders() {
        return providerService.findAll();
    }

}
