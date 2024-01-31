import 'package:get/get.dart';
import 'package:sneakers_shop/data/data.dart';
import 'package:sneakers_shop/data/models/shoe.dart';

class ProductsController extends GetxController {
  static ProductsController instance = Get.find();
  var shoesList = <Shoe>[].obs;
  var cartShoesList = <Shoe>[].obs;

  var isLoading = false.obs;

  @override
  void onInit() {
    getShoeList();
    super.onInit();
  }

  //
  //get list of shoe
  getShoeList() {
    //fake api call
    shoesList.addAll(shoeShop);
  }

  //
  //get items to cart
  void addItemToCart(shoe) {
    cartShoesList.add(shoe);
  }

  //
  //remove items from cart
  void removeItemFromCart(shoe) {
    cartShoesList.remove(shoe);
  }

  double calculateTotalPrice() {
    return 55.4;
  }

  // //
  // var favouritesList = <ProductModel>[].obs;
  // //loacal caching
  // var storage = GetStorage();

  // //~~~~~~~~~~~~~~Search~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // var searchList = <ProductModel>[].obs;
  // TextEditingController searchTextController = TextEditingController();

  // @override
  // void onInit() {
  //   //Getting the local favourites list if there is any
  //   List? storedFavList = storage.read<List>('isFavoritesList');
  //   if (storedFavList != null) {
  //     favouritesList = storedFavList.map((e) => ProductModel.fromJson(e)).toList().obs;
  //   }
  //   //Getting product from api
  //   //getProducts();
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   //~~~~~~~~~~~~~~Get data from firebase~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  //   try {
  //     isLoading(true);
  //     productsList.bindStream(ProductService.productStream());
  //   } finally {
  //     isLoading(false);
  //   }
  //   super.onReady();
  // }

  // //Getting the products from fake api----------------------------------------
  // void getProducts() async {
  //   List<ProductModel> products = await ProductService.getProducts();
  //   try {
  //     isLoading(true); //When its done it become false
  //     if (products.isNotEmpty) {
  //       productsList.addAll(products);
  //     }
  //   } finally {
  //     isLoading(false);
  //   }
  // }

  // //Favorites logic----------------------------------------------------------
  // void manageFavourites(productId) async {
  //   var removeAtIndex = favouritesList.indexWhere((product) => product.productId == productId);
  //   if (removeAtIndex >= 0) {
  //     favouritesList.removeAt(removeAtIndex);
  //     await storage.remove('isFavoritesList');
  //   } else {
  //     favouritesList.add(productsList.firstWhere((product) => product.productId == productId));
  //     //
  //     await storage.write('isFavoritesList', favouritesList);
  //   }
  // }

  // bool isFavourites(productId) {
  //   //isFavourites.value == !isFavourites.value;
  //   return favouritesList.any((product) => product.productId == productId);
  // }
  // //--------------------------------------------------------------------------

  // //~~~~~~~~~~~~~~SearchBar Logic~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // void addSearchToList(String searchName) {
  //   searchList.value = productsList.where((search) {
  //     return search.productName.toLowerCase().contains(searchName.toLowerCase()) || //filter by name
  //         search.productPrice.toString().contains(searchName); //filter by preice
  //   }).toList();
  //   update();
  // }

  // void clearSearch() {
  //   searchTextController.clear();
  //   addSearchToList("");
  // }
}
