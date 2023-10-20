import 'package:coffe/features/product/manger/product_model.dart';

class CartItem implements Comparable<CartItem> {
  String id;
  Product product;
  double total;
  String userId;
  int quantity;
  int color;

  CartItem({
    required this.id,
    required this.product,
    required this.total,
    required this.userId,
    required this.quantity,
    required this.color,
  });

  factory CartItem.fromJison(Map<String, Object?> json) => CartItem(
        id: json["id"] as String,
        product: Product.fromJson(json["product"] as Map<String, Object?>),
        total: json["total"] as double,
       
        userId: json["userId"] as String,
        quantity: json["quantity"] as int,
        color: json["color"] as int,
      );

  Map<String, Object?> toJson() => {
        "id": id,
        "product": product.toJson(),
        "total": total,
        
        "userId": userId,
        "quantity": quantity,
        "color": color,
      };

  @override
  String toString() {
    return 'CartItem{id: $id, product: $product, total: $total, userId: $userId, quantity: $quantity, color: $color}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CartItem &&
          runtimeType == other.runtimeType &&
          id == other.id && userId == other.userId;

  @override
  int get hashCode =>
      Object.hash(id, userId);

  @override
  int compareTo(other) {
    return id.compareTo(other.id);
  }
}
