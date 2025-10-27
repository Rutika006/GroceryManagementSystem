package com.jsp.Dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.jsp.Dto.GroceryItems;

@Repository
public class GroceryDao {

    @Autowired
    private EntityManager manager;

    @Autowired
    private EntityTransaction transaction;

    // To add grocery items
    public void addItems(GroceryItems items) {
        transaction.begin();
        manager.persist(items);
        transaction.commit();
    }

    // To search grocery items by ID
    public GroceryItems searchItems(int id) {
        GroceryItems items = manager.find(GroceryItems.class, id);
        return items;
    }

    // To search grocery items by name or category
    public List<GroceryItems> searchGroceryItem(String searchInput) {
        Query q = manager.createQuery("select g from GroceryItems g where g.name = :searchInput or g.category = :searchInput");
        q.setParameter("searchInput", searchInput);
        return q.getResultList();
    }


    // To view all grocery items
    public List<GroceryItems> getAllGroceryItems() {
        Query q = manager.createQuery("select g from GroceryItems g");
        return q.getResultList();
    }

    // To purchase (update stock) a grocery item
    public void purchaseGroceryItem(int productId, int quantity) {
        GroceryItems item = manager.find(GroceryItems.class, productId);
        if (item != null && item.getStockQuantity() >= quantity) {
            transaction.begin();
            item.setStockQuantity(item.getStockQuantity() - quantity);
            manager.merge(item);
            transaction.commit();
        }
    }
}
