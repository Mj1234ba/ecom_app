class ProductItem {
  String? title;
  String? description;
  int? id;
  double? price;
  String? imageOfProduct;
  double? rate;
  String? category;

  ProductItem(
      {required this.title,
      required this.description,
      required this.imageOfProduct,
      required this.id,
      required this.price,
      required this.rate,
      required this.category});

  ProductItem.fromJson(Map<String, dynamic> map) {
    print('the value from function is ${map}');
    title = map['title'];
    description = map['description'].toString();
    id = int.parse(map['id'].toString());
    price = double.parse(map['price'].toString());
    rate = double.parse(map['rating']['rate'].toString());
    imageOfProduct = map['image'];
    category = map['category'];
  }
}
