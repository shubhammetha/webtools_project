package com.eshopstore.dao.impl;

import com.eshopstore.dao.CartDao;
import com.eshopstore.model.Cart;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
public class CartDaoImpl implements CartDao {

    private Map<String, Cart> listOfCarts;

    public CartDaoImpl(){
        listOfCarts= new HashMap<String, Cart>();
    }

    public Cart create(Cart cart){
        if (listOfCarts.keySet().contains(cart.getCartId())) {
            throw new IllegalArgumentException(String.format("Problem with Cart creation. Cart with this Id(%)"+ "already" + "exists", cart.getCartId()));
        }

        listOfCarts.put(cart.getCartId(), cart);
        return cart;
    }

    public Cart read(String cartId){
        return listOfCarts.get(cartId);
    }

    public void update(String cartId, Cart cart){
        if(!listOfCarts.keySet().contains(cartId)){
            throw new IllegalArgumentException(String.format("Problem update the Cart. Cart with this Id(%)"+ "does not" + "exists", cart.getCartId()));
        }
        listOfCarts.put(cartId, cart);
    }

    public void delete(String cartId){
        if(!listOfCarts.keySet().contains(cartId)){
            throw new IllegalArgumentException(String.format("Cannot delete the Cart. Cart with this Id(%)"+ "does not" + "exists",cartId));
        }
        listOfCarts.remove(cartId);
    }
}
