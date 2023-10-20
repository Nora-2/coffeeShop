import 'package:coffe/core/controllers/favorite_controller.dart';
import 'package:coffe/core/services/constants/colors.dart';
import 'package:coffe/core/services/theme/text_styles.dart';
import 'package:coffe/features/product/manger/product_model.dart';
import 'package:coffe/res/resorces_list.dart';
import 'package:flutter/material.dart';


class ProductWidget extends StatefulWidget {
  final FavoriteController controller;
  final Product product;
  final int index;
 
  const ProductWidget(
      {super.key,
      required this.controller,
      required this.product,
      required this.index});

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  late final FavoriteController controller;
  
  //  final int index;

  @override
  void initState() {
    super.initState();
    controller = FavoriteController(updater: setState);
  }

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return 
       SizedBox(
        height: 100,
        child: Row(
          children: [
            GestureDetector(
              onTap: () => controller.buttonProduct(context, widget.product),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(widget.product.images[0]!.first),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.product.name,
                  style: AppTextStyles.nunitoSansSemiBold14.copyWith(
                    color: AppColors.c606060,
                  ),
                ),
              const  SizedBox(
                  height: 5,
                ),
                Text(with_[0],
                    style: TextStyle(
                      color: Colors.black.withOpacity(.5),
                      fontSize: 15,
                    )),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.brown,
                          size: 15,
                        ),
                        Text(
                          ratting[1].toString(),
                          style: const TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  const  SizedBox(
                      width: 20,
                    ),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text("\$ ",
                          style: TextStyle(
                              color: Colors.brown,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    ),
                    Text(prices[2],
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        )),
                  ],
                ),
              
              ],
            ),
            const Spacer(
              flex: 7,
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () => controller.productDelete(widget.index),
                  child:const SizedBox(
                      width: 25, height: 25, child: Icon(Icons.cancel)),
                ),
                const Spacer(
                  flex: 1,
                ),
                Container(
                  padding: const EdgeInsets.all(6),
                  width: 34,
                  height: 34,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: GestureDetector(
                    child:const Icon( Icons.favorite,color: Colors.brown,) 
                  ),
                ),
              ],
            ),
          ],
        ),
      
    );
  }
}
