import 'package:sneakers_shop/data/models/shoe.dart';

class Cart {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom FREAK',
        price: '236',
        imagePath: 'assets/images/air_jorden_02',
        description: 'The forward-thinking design of his latestsignature shoe'),
    Shoe(
        name: 'Air Jordans',
        price: '220',
        imagePath: 'assets/images/air_jorden_03',
        description: 'The forward-thinking design of his latestsignature shoe'),
    Shoe(
        name: 'KD Terys',
        price: '240',
        imagePath: 'assets/images/air_jorden_04',
        description: 'The forward-thinking design of his latestsignature shoe'),
    Shoe(
        name: 'Kyrie 6',
        price: '190',
        imagePath: 'assets/images/air_jorden_01',
        description: 'The forward-thinking design of his latestsignature shoe'),
  ];

  //
  //List of items in user cart
  List<Shoe> userCart = [];

  //
  //get list of shoe
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //
  //get list of shoe
  List<Shoe> getUserCartList() {
    return userCart;
  }

  //
  //get items to cart
  void addItemToCart(shoe) {
    userCart.add(shoe);
  }

  //
  //remove items from cart
  void removeItemFromCart(shoe) {
    userCart.remove(shoe);
  }
}
