import 'package:ecomerce_app/Models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Models/shoe.dart';
import '../components/shoe_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  // adding shoe to cart method

  void addShoeToCart (Shoe shoe){
    Provider.of<cart>(context, listen: false).addItemToCart(shoe);

    // alert the user , shoe successfully added 
    showDialog(context: context, builder: (context) => AlertDialog(
      title: Text("Successfully added!"),
      content: Text("Check your cart"),
    ),);
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<cart> (builder: (context,value,child) => Column(
      children: [
        // Search Bar
        Container(
          padding:const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Search ",
              style: TextStyle(color: Colors.grey),),
              Icon(Icons.search,
              color: Colors.grey,),
            ],
          ),),

        // Message
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 25.0),
          child: Text("Everyone Flies .. Some Fly Longer Than Others",
          style: TextStyle(color: Colors.grey),),
        ),
        // Hot Picks
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children:  [
            Text("Hot Picks 🔥",
            style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 24,),),
            Text("See all",
            style: TextStyle(fontWeight: FontWeight.bold,
            color: Colors.blue,),
            ),
          
          ],),
        ),

        const SizedBox(height: 10,),

        // List Of Shoes for Sale
        Expanded(child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
          // Get A Shoe from list 
          Shoe shoe = value.getShoeList()[index];
          // return shoe
          return ShoeTile (
            shoe: shoe,
            onTap: () => addShoeToCart(shoe),
          );
        },
        ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 25.0,left: 25,right: 25),
          child: Divider(
            color: Colors.white,
          ),
        )
      ],
    )
);  }
}