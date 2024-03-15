import 'dart:ui';

import '../screens/myCartPage/model/productDetails_model.dart';

class CommonConstance {
  ///colors
  static const primaryColor = Color(0xff9F511E);
  static const secondaryColor = Color(0xff3b3b42);
  static const subTitle = Color(0xff72727a);

  ///cloth image
  static const List<String> cloths = [
    "assets/children_clothes/children_cloth1.png",
    "assets/children_clothes/children_cloth2.png",
    "assets/children_clothes/children_cloth3.png",
    "assets/children_clothes/children_cloth4.png",
    "assets/children_clothes/children_cloth5.png",
    "assets/children_clothes/children_cloth6.png"
  ];

  ///cart Product details
  static final List<ProductDetails> cartProduct = [
    ProductDetails(
      productImage: 'assets/children_clothes/children_cloth1.png',
      productName: "Round-neck T-shirt",
      productSize: "M",
      productPrize: 450,
      totalPrice: 450,
      productQuantity: 1,
    ),
    ProductDetails(
      productImage: 'assets/children_clothes/children_cloth2.png',
      productName: "Neck T-Shirt",
      productSize: "xxL",
      productPrize: 250,
      totalPrice: 250,
      productQuantity: 1,
    ),
    ProductDetails(
      productImage: 'assets/children_clothes/children_cloth3.png',
      productName: "Checked Polo T-Shirt",
      productSize: "xxxL",
      productPrize: 540,
      totalPrice: 540,
      productQuantity: 1,
    ),
    ProductDetails(
      productImage: 'assets/children_clothes/children_cloth4.png',
      productName: "Casual Shirt",
      productSize: "L",
      productPrize: 200,
      totalPrice: 200,
      productQuantity: 1,
    ),
    ProductDetails(
      productImage: 'assets/children_clothes/children_cloth5.png',
      productName: "Cotton T-Shirt",
      productSize: "S",
      productPrize: 180,
      totalPrice: 180,
      productQuantity: 1,
    ),
  ];
}
