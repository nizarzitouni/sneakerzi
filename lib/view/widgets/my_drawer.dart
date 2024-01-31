import 'package:flutter/material.dart';
import 'package:sneakers_shop/core/constatns.dart';

Drawer myDrawer() {
  return Drawer(
    backgroundColor: Colors.grey[900],
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //logo
            DrawerHeader(
              child: Image.asset(
                'assets/images/nike.png',
                color: Colors.white,
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Divider(
                color: Colors.grey[800],
              ),
            ),

            //other pages
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: const Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: ListTile(
                leading: Icon(
                  Icons.info,
                  color: Colors.white,
                ),
                title: const Text(
                  'About',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: GestureDetector(
                onTap: () {
                  productsCTR.cartShoesList.clear();
                },
                child: ListTile(
                  leading: Icon(
                    Icons.info,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'Empty Cart',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, bottom: 25),
          child: ListTile(
            leading: Icon(
              Icons.logout,
              color: Colors.white,
            ),
            title: const Text(
              'Log out',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
