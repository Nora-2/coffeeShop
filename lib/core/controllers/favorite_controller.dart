import 'package:coffe/core/controllers/base_controller.dart';
import 'package:coffe/features/cart/presentation/views/cart_screen.dart';
import 'package:coffe/features/product/manger/product_model.dart';
import 'package:coffe/features/product/presentation/views/product_screen.dart';
import 'package:flutter/cupertino.dart';

class FavoriteController extends BaseController{
  void Function(void Function())? updater;
  void goToCongrats(BuildContext context) {
    Navigator.pushNamed(context, CartScreen.id);
  }

  void buttonProduct(BuildContext context, Product product) {
    Navigator.of(context).pushNamed(ProductScreen.id, arguments: product);
  }

  FavoriteController({this.updater});
  void productDelete(int index){
    // products.removeAt(index);
    updater!((){});
  }
}