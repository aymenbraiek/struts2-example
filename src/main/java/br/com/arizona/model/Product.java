package br.com.arizona.model;

import java.math.BigDecimal;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

@Entity
public class Product extends BasicEntity {

    private String name;
    
	private BigDecimal price;
	
	@ManyToOne
	private Provider provider;

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	
	public void setPrice(String price) {
		if (price != null && !price.trim().isEmpty())
			this.price = new BigDecimal(price.replaceAll("[.]","").replace(",", "."));
	}

	public Provider getProvider() {
		return provider;
	}

	public void setProvider(Provider provider) {
		this.provider = provider;
	}

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
