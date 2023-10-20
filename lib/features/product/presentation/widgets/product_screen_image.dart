import 'package:coffe/core/controllers/product_controller.dart';
import 'package:flutter/material.dart';
import 'product_image.dart';

class ProductScreenImage extends StatelessWidget {
  final ProductController controller;
  const ProductScreenImage({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 8,
      child: ProductImages(
        controller: controller,
      ),
    );
  }
}
