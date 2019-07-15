package com.eshopstore.model;


import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import javax.validation.constraints.Min;

@Entity
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private String productId;

    @NotEmpty (message = "Please enter the product name!")
    private String productName;

    @NotEmpty (message = "Please enter the product category!")
    private String productCategory;

    @NotEmpty (message = "Please enter the product description!")
    private String productDescription;

    @Min(value = 1, message = "Please enter the price here!")
    private double productPrice;
    private String productCondition;
    private String productStatus;

    @Min(value = 1, message = "Please enter the product quantity here!")
    private int unitInStock;

    @NotEmpty (message = "Please enter the product manufacturer!")
    private String productManufacturer;

    @Transient
    private MultipartFile productImage;

    public String getProductId()
    {
        return productId;
    }

    public void setProductId(String productId)
    {
        this.productId = productId;
    }
    public String getProductName()
    {
        return productName;
    }
    public void setProductName(String productName)
    {
        this.productName = productName;
    }
    public String getProductCategory() {
        return productCategory;
    }
    public void setProductCategory(String productCategory)
    {
        this.productCategory = productCategory;
    }
    public String getProductDescription() {
        return productDescription;
    }
    public void setProductDescription(String productDescription)
    {
        this.productDescription = productDescription;
    }
    public double getProductPrice() {
        return productPrice;
    }
    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }
    public String getProductCondition()
    {
        return productCondition;
    }
    public void setProductCondition(String productCondition)
    {
        this.productCondition = productCondition;
    }
    public String getProductStatus()
    {
        return productStatus;
    }
    public void setProductStatus(String productStatus)
    {
        this.productStatus = productStatus;
    }

    public int getUnitInStock()
    {
        return unitInStock;
    }

    public void setUnitInStock(int unitInStock)
    {
        this.unitInStock = unitInStock;
    }
    public String getProductManufacturer()
    {
        return productManufacturer;
    }
    public void setProductManufacturer(String productManufacturer)
    {
        this.productManufacturer = productManufacturer;
    }
    public MultipartFile getProductImage()
    {
        return productImage;
    }
    public void setProductImage(MultipartFile productImage)
    {
        this.productImage = productImage;
    }
}
