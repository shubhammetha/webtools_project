package com.eshopstore.dao;

import com.eshopstore.model.Cart;
import org.springframework.stereotype.Repository;

@Repository
public interface CartDao {

    Cart create(Cart cart);

    Cart read(String cartId);

    void update( String cartId, Cart cart);

    void delete( String cartId);
}

