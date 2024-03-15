import 'package:flutter/cupertino.dart';
import '../../../Constance/common_constance.dart';
import '../model/productDetails_model.dart';

class ProductCardDetails extends ChangeNotifier {
  void addProductQuantity(int index) {
    CommonConstance.cartProduct[index].productQuantity =
        CommonConstance.cartProduct[index].productQuantity! + 1;
    CommonConstance.cartProduct[index].totalPrice =
        CommonConstance.cartProduct[index].productPrize! *
            CommonConstance.cartProduct[index].productQuantity!;
    notifyListeners();
  }

  void subProductQuantity(int index) {
    if (CommonConstance.cartProduct[index].productQuantity! > 1) {
      CommonConstance.cartProduct[index].productQuantity =
          CommonConstance.cartProduct[index].productQuantity! - 1;
      CommonConstance.cartProduct[index].totalPrice =
          CommonConstance.cartProduct[index].totalPrice! -
              CommonConstance.cartProduct[index].productPrize!;
    }
    notifyListeners();
  }
}
