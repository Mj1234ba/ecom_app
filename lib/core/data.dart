import 'package:ecommerce/core/asset_manager.dart';
import 'package:ecommerce/feature/feature_products/presentation/screens/account_screen.dart';
import 'package:ecommerce/feature/feature_products/presentation/screens/cart_screen.dart';
import 'package:ecommerce/feature/feature_products/presentation/screens/home_product.dart';
import 'package:flutter/material.dart';

List<IconData> listOfIcons = [
  Icons.home,
  Icons.shopping_cart_outlined,
  Icons.account_circle
];
List<Widget> listofPages = const [
  HomeProduct(),
  CartScreen(),
  AccountScreen(),
];

List<String> listofImageCategory = [
  ImageAsset.mensImage,
  ImageAsset.womenImage,
  ImageAsset.electroImage,
  ImageAsset.jawallry
];
List<String> listOfCategoryName = ['Mens', 'Women', 'Electronics', 'Jawallry'];
List<String> categoryName = [
  "men's clothing",
  "women's clothing",
  "electronics",
  "jewelery",
];
