import 'package:flutter/material.dart';

import 'shoe.dart';

class cart extends ChangeNotifier {

  // list of shoes for sale

  List<Shoe> shoeShop = [
    Shoe(name: "airjordan",
     price: "236",
      imagePath: "lib/images/airjordan.jpg",
       Description: "The Forward-thinking design of his latest signature shoes"),

       Shoe(
        name: "KDTREY",
         price: "220",
          imagePath: "lib/images/KDTREY.jpg",
           Description: "You have got the hops and speed-lace up in shoes that enhance your speed..."),

           Shoe(
        name: "KYRIE",
         price: "219.99",
          imagePath: "lib/images/KYRIE.jpg",
           Description: "You have got the hops and speed-lace up in shoes that enhance your speed..."),

           Shoe(
        name: "dynamic",
         price: "230",
          imagePath: "lib/images/dynamic.jpg",
           Description: "You have got the hops and speed-lace up in shoes that enhance your speed..."),
  ];

  

  // list of items in user cart 

  List<Shoe> userCart = [

  ];

  // get list of shoes for sale

List<Shoe> getShoeList(){
  return shoeShop;
}

  // get cart

  List<Shoe> getUserCart (){
    return userCart;
  }

  // adding items to the cart

void addItemToCart (Shoe shoe) {
  userCart.add(shoe);
  notifyListeners();

}

  // removing items from the cart

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}