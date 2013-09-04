package br.com.arizona.controller;

import java.util.Collection;

import org.apache.commons.lang.StringUtils;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.apache.struts2.rest.DefaultHttpHeaders;
import org.apache.struts2.rest.HttpHeaders;
import org.springframework.beans.factory.annotation.Autowired;

import br.com.arizona.model.Provider;
import br.com.arizona.service.ProviderService;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Validateable;

@Results({
	@Result(name="success", type="redirectAction", params = {"actionName" , "providers"}),
    @Result(name="deleteConfirm",location = "providers-deleteConfirm"),
    @Result(name="show", location = "providers-show"),
    @Result(name="editNew", location = "providers-editNew"),
    @Result(name="edit", location = "providers-edit"),
	@Result(name="index", location = "providers-index")
})
public class ProvidersController extends ActionSupport implements ModelDriven<Object>, Validateable {
    
	private static final long serialVersionUID = 4804183746845551386L;
	private Provider model = new Provider();
    private Long id;
    private Collection<Provider> list;

    @Autowired
    private ProviderService providerService;

    // GET /providers/1
    public HttpHeaders show() {
        return new DefaultHttpHeaders("show")
        	.disableCaching();
    }

    // GET /providers
    public HttpHeaders index() {
        list = providerService.findAll();
        return new DefaultHttpHeaders("index")
            .disableCaching();
    }
    
    // GET /providers/1/edit
    public String edit() {
        return "edit";
    }

    // GET /providers/new
    public String editNew() {
        model = new Provider();
        return "editNew";
    }

    // GET /providers/1/deleteConfirm
    public String deleteConfirm() {
        return "deleteConfirm";
    }

    // DELETE /providers/1
    public String destroy() {
        providerService.delete(model);
        addActionMessage("Order removed successfully");
        return "success";
    }

    // POST /providers
    public HttpHeaders create() {
        providerService.save(model);
        addActionMessage("New order created successfully");
        return new DefaultHttpHeaders("success")
            .setLocationId(model.getId());
    }

    // PUT /providers/1
    public String update() {
        providerService.update(model);
        addActionMessage("Order updated successfully");
        return "success";
    }

    public void validate() {
        if (StringUtils.isBlank(model.getName())) {
            addFieldError("name", getText("required.field"));
        }
    }

    public void setId(Long id) {
        if (id != null) {
            this.model = providerService.findById(id);
        }
        this.id = id;
    }
    
    public Long getId() {
    	return this.id;
    }
    
    public Object getModel() {
        return (list != null ? list : model);
    }

}
