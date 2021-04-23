import 'package:flutter/material.dart';
import 'package:wiki_app/domain/model/item.dart';

class ItemMock {
  List<Item> getAllItems() {
    List<Item> items = new List<Item>();
    Item item = new Item();
    item.id = 1;
    item.title = "Machu Pichu";
    item.description = "  Ubicada  en  Perú";
    item.image =
        "https://images.unsplash.com/photo-1609944433409-81bda5323abc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=375&q=80";
    items.add(item);
    item = new Item();
    item.id = 2;
    item.title = "La Habana";
    item.description = "  Ubicada  en  Cuba";
    item.image =
        "https://images.unsplash.com/photo-1570299437522-f66ff98d52e7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80";
    items.add(item);
    item = new Item();
    item.id = 3;
    item.title = "La Torre Eiffel";
    item.description = "Ubicada en Francia";
    item.image =
        "https://images.unsplash.com/photo-1502602898657-3e91760cbb34?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=752&q=80";
    items.add(item);

    item = new Item();
    item.id = 4;
    item.title = "Teotihuacan";
    item.description = "Ubicada en México";
    item.image =
        "https://images.unsplash.com/photo-1586933613001-b003c20beac0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=624&q=80";
    items.add(item);

    item = new Item();
    item.id = 5;
    item.title = "Rio de Janeiro";
    item.description = "Ubicada en Brasil";
    item.image =
        "https://images.unsplash.com/photo-1483729558449-99ef09a8c325?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80";
    items.add(item);
    return items;
  }

  List<Item> getAllCharacterItems() {
    List<Item> items = new List<Item>();
    Item item = new Item();
    item.id = 11;
    item.title = "Leonardo Di caprio";
    item.description = "11 de noviembre de 1974";
    item.image =
        "https://upload.wikimedia.org/wikipedia/commons/4/46/Leonardo_Dicaprio_Cannes_2019.jpg";
    items.add(item);
    item = new Item();
    item.id = 12;
    item.title = "Margot Robbie";
    item.description = "2 de julio de 1990";
    item.image =
        "https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/SYDNEY%2C_AUSTRALIA_-_JANUARY_23_Margot_Robbie_arrives_at_the_Australian_Premiere_of_%27I%2C_Tonya%27_on_January_23%2C_2018_in_Sydney%2C_Australia_%2828074883999%29_%28cropped_2%29.jpg/220px-thumbnail.jpg";
    items.add(item);
    item = new Item();
    item.id = 13;
    item.title = "Emma Stone";
    item.description = "6 de noviembre de 1988";
    item.image =
        "https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Emma_Stone_at_Maniac_UK_premiere_%28cropped%29.jpg/220px-Emma_Stone_at_Maniac_UK_premiere_%28cropped%29.jpg";
    items.add(item);

    item = new Item();
    item.id = 14;
    item.title = "Christian Bale";
    item.description = "30 de enero de 1974";
    item.image =
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Christian_Bale-7837.jpg/220px-Christian_Bale-7837.jpg";
    items.add(item);

    item = new Item();
    item.id = 15;
    item.title = "Scarlett Johansson";
    item.description = "	22 de noviembre de 1984";
    item.image =
        "https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Scarlett_Johansson_by_Gage_Skidmore_2_%28cropped%29.jpg/220px-Scarlett_Johansson_by_Gage_Skidmore_2_%28cropped%29.jpg";
    items.add(item);
    return items;
  }
}
