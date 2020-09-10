package com.albanianyachting.dto;

import javax.persistence.Column;
import java.io.Serializable;

public class ProvisioningDTO implements Serializable {
    private Long id;
    private String product;
    private Integer quantity;

    public ProvisioningDTO() {
    }

    public ProvisioningDTO(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getProduct() {
        return product;
    }

    public void setProduct(String product) {
        this.product = product;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }
}
