
import 'package:coffe/features/cart/manger/cart_item_model.dart';
import 'package:coffe/features/cart/manger/cart_model.dart';
import 'package:coffe/features/product/manger/product_model.dart';

late final CartManager cartManager;

class CartManager {
  CartModel cart;

  CartManager._(String userId) : cart = CartModel(id: "01", carts: [], total: 2000, createdAt: DateTime.now().toString(), modifyAt: DateTime.now().toString(), userId: userId, amount: 0);
  factory CartManager(String userId) => CartManager._(userId);

  void addToCartHome(Product product) {
    final cartItem = CartItem(id: product.id, product: product, total: product.price,   userId: cart.userId, quantity: 1, color: product.colors.first);

    if(!cart.carts.contains(cartItem)) {
      cart.carts.add(cartItem);
    }
  }

  void addToCart(CartItem cartItem) {

    if(cart.carts.contains(cartItem)) {
      cart.carts.removeWhere((element) => element.id == cartItem.id);
    }

    cart.carts.add(cartItem);
  }
}