import 'package:coffe/core/controllers/favorite_controller.dart';
import 'package:coffe/core/services/constants/colors.dart';
import 'package:coffe/core/services/constants/strings.dart';
import 'package:coffe/core/services/theme/text_styles.dart';
import 'package:flutter/material.dart';


class CartButton extends StatelessWidget {
  const CartButton({
    super.key,
    required this.controller,
  });

  final FavoriteController controller;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => controller.goToCongrats(context),
      style: ElevatedButton.styleFrom(
        elevation: 5,
        shadowColor: AppColors.c303030,
        backgroundColor: AppColors.c303030,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        minimumSize: const Size(800, 60),
      ),
      child: Text(
        Strings.addAll.text,
        style: AppTextStyles.nunitoSansSemiBold18.copyWith(
          color: AppColors.cFFFFFF,
        ),
      ),
    );
  }
}
