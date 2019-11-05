package ejb;

import java.util.List;

import javax.ejb.Remote;

import data.Item;

@Remote
public interface ItemsEJBRemote {
    public boolean createItem(String name, String category, String countryOrigin, String userEmail);
    public void deleteItem(String itemName, String userEmail);
    public List<Item> getItemsByCategory(String category);
}