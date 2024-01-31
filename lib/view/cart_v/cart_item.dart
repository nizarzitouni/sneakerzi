import 'package:flutter/material.dart';
import 'package:sneakers_shop/core/constatns.dart';
import 'package:sneakers_shop/data/models/shoe.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.shoe});
  final Shoe shoe;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: Image.asset(shoe.imagePath),
        title: Text(shoe.name),
        subtitle: Text(shoe.price),
        trailing: IconButton(
          onPressed: () {
            productsCTR.removeItemFromCart(shoe);
          },
          icon: const Icon(
            Icons.delete,
            color: Colors.white,
            // size: 20,
          ),
        ),
      ),
    );
  }
}
