import 'package:flutter/material.dart';

import '../Models/shoe.dart';
class ShoeTile extends StatelessWidget {
  void Function()? onTap;
  Shoe shoe;
   ShoeTile({super.key,required this.shoe,
   required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25,),
      width: 200,
      decoration: BoxDecoration(color: Colors.grey[100],
      borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        // Shoe Picture
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(shoe.imagePath),),
        // Description

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Text(
            shoe.Description,
            style: TextStyle(
              color: Colors.grey[600],
            ),),
        ),


        // price + details
        
        Padding(
          padding: const EdgeInsets.only(left:25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                // Shoe Name
                Text(shoe.name,style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  ),),
          
                const SizedBox(height: 5,),
          
          
              // Price
              Text(
               '\s' + shoe.price,
              style: const TextStyle(
                color: Colors.grey),),
          
              ],
              ), 
          
              // Plus button
              GestureDetector(
                onTap: onTap ,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(color: Colors.black,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),)),
                  child: const Icon(Icons.add,
                  color: Colors.white,),),
              )
          
          
          ],),
        )
       

        //  buttons to add to cart

      ],),
    );
  }
}