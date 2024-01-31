import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneakers_shop/core/constatns.dart';
import 'package:sneakers_shop/core/size_config.dart';
import 'package:sneakers_shop/data/models/shoe.dart';
import 'package:sneakers_shop/view/cart_v/cart_item.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Obx(
        () => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //heading
              Text(
                'My Cart',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),

              SizedBox(height: SizeConfig.screenHeight * .02),

              Container(
                color: Colors.yellow,
                height: SizeConfig.screenHeight * .63,
                // width: SizeConfig.screenWidth * .7,
                child: Expanded(
                  child: ListView.builder(
                    itemCount: productsCTR.cartShoesList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      Shoe shoe = productsCTR.cartShoesList[index];
                      return CartItem(
                        shoe: shoe,
                      );
                    },
                  ),
                ),
              ),

              // Below the ListView.builder
              SizedBox(height: SizeConfig.screenHeight * .02),
              Row(
//mainAxisAlignment: MainAxisAlignment.center,
//crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Total Price: \$${productsCTR.calculateTotalPrice()}',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      // Implement your checkout logic here
                    },
                    child: Text('Proceed to Checkout'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
