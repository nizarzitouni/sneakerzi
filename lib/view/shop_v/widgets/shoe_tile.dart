import 'package:flutter/material.dart';
import 'package:sneakers_shop/core/constatns.dart';
import 'package:sneakers_shop/data/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  const ShoeTile({Key? key, required this.shoe}) : super(key: key);
  final Shoe shoe;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
          bottomLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //Shoe Pic
          ClipRRect(borderRadius: BorderRadius.circular(12), child: Image.asset(shoe.imagePath)),
          //dec
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              shoe.description,
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
          ),
          //price + details
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //name
                    Text(
                      shoe.name,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    //price
                    Text(
                      '\$${shoe.price}',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),

                //plus btn
                GestureDetector(
                  onTap: () {
                    productsCTR.addItemToCart(shoe);
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Successfully added!'),
                        content: Text('Check your cart'),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          )
          //button to add to cart
        ],
      ),
    );
  }
}
