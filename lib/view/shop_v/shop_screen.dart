import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneakers_shop/data/models/shoe.dart';
import 'package:sneakers_shop/view/shop_v/widgets/shoe_tile.dart';

import '../../core/constatns.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: Colors.grey[300],
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //search bar
            Container(
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Search',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  const Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 20,
                  ),
                ],
              ),
            ),
            //message
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Text('everyone flies.. some fly longer than others', style: TextStyle(color: Colors.grey[600])),
            ),
            //hot picks
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'Hot Picks 🔥',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  //
                  const Text(
                    'See all',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            //
            const SizedBox(height: 10.0),
            //
            //
            Expanded(
              child: ListView.builder(
                itemCount: productsCTR.shoesList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  Shoe shoe = productsCTR.shoesList[index];
                  return ShoeTile(
                    shoe: shoe,
                  );
                },
              ),
            ),
            //
            //
            Padding(
              padding: const EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
              child: Divider(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
