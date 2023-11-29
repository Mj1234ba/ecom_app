import 'package:ecommerce/feature/feature_products/data/models/product_model.dart';
import 'package:get/get.dart';

class Cartcontroller extends GetxController {
  List<ProductItem> listOfCart = [];

  bool addToCart(ProductItem product) {
    var value = listOfCart.indexWhere((element) {
      return element.id == product.id;
    });
    if (value == 0) {
      return false;
    }
    listOfCart.add(product);
    return true;
  }
}
