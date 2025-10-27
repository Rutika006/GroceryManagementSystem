package com.jsp.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.jsp.Dao.GroceryDao;
import com.jsp.Dto.GroceryItems;
import java.util.List;

@Controller
public class GroceryController {

    @Autowired
    private GroceryDao groceryDao;

    @RequestMapping("/")
    public String home() {
        return "home.jsp";
    }

    @RequestMapping("/add")
    public ModelAndView addGroceryForm() {
        ModelAndView mv = new ModelAndView();
        mv.addObject("groceryItem", new GroceryItems());
        mv.setViewName("add.jsp");
        return mv;
    }

    @RequestMapping("/save")
    public String saveGroceryItem(@ModelAttribute GroceryItems groceryItem) {
        groceryDao.addItems(groceryItem);
        return "home.jsp";
    }

    @RequestMapping("/view")
    public ModelAndView viewAllGroceries() {
        ModelAndView mv = new ModelAndView();
        List<GroceryItems> list = groceryDao.getAllGroceryItems();
        mv.addObject("groceryList", list);
        mv.setViewName("viewItems.jsp");
        return mv;
    }

    @RequestMapping("/searchItems")
    public ModelAndView searchGroceryForm() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("search.jsp");
        return mv;
    }

    @RequestMapping("/searchResult")
    public ModelAndView searchGroceryResult(@RequestParam("searchInput") String searchInput) {
        ModelAndView mv = new ModelAndView();
        List<GroceryItems> list = groceryDao.searchGroceryItem(searchInput);
        mv.addObject("groceryList", list);
        mv.setViewName("viewItems.jsp");
        return mv;
    }

    @RequestMapping("/purchase")
    public ModelAndView purchaseGroceryForm() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("purchase.jsp");
        return mv;
    }

    @RequestMapping("/purchaseResult")
    public ModelAndView purchaseGroceryResult(@RequestParam("productId") int productId, @RequestParam("quantity") int quantity) {
        ModelAndView mv = new ModelAndView();
        groceryDao.purchaseGroceryItem(productId, quantity);
        mv.setViewName("purchaseItems.jsp");
        return mv;
    }
}
