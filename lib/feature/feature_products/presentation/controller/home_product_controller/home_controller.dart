import 'dart:convert';
import 'package:ecommerce/core/data.dart';
import 'package:ecommerce/feature/feature_products/data/models/product_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  int currentIndex = 0;
  List<ProductItem> listOfProductItems = [];
  List<ProductItem> listOfFilterItem = [];

  onInit() async {
    super.onInit();
    await getDataFromApi();
    filterOfItems();
  }

  getDataFromApi() async {
    listOfProductItems.clear();
    String url = 'https://fakestoreapi.com/products';

    try {
      var response = await http.get(Uri.parse(url));
      List<dynamic> list = json.decode(response.body);
      for (int i = 0; i < list.length; i++) {
        listOfProductItems.add(ProductItem.fromJson(list[i]));
      }
      update();
    } catch (e) {
      print('there are Error try again');
    }
  }

  filterOfItems() {
    listOfFilterItem.clear();
    for (int i = 0; i < listOfProductItems.length; i++) {
      if (listOfProductItems[i].category == categoryName[currentIndex]) {
        listOfFilterItem.add(listOfProductItems[i]);
      }
    }
    update();
  }

  changeIndex(int value) {
    currentIndex = value;
    filterOfItems();
    update();
  }
}
