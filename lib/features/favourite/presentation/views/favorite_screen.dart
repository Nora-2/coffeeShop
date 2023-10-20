import 'package:coffe/core/controllers/favorite_controller.dart';
import 'package:coffe/core/services/constants/colors.dart';
import 'package:coffe/core/services/data/database/products.dart';
import 'package:coffe/core/services/theme/text_styles.dart';
import 'package:coffe/features/favourite/presentation/widgets/favorite_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';


class FavoriteScreen extends StatefulWidget {
  static const id = "/favorite";

  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  late final FavoriteController controller;

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

  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
          flexibleSpace: Container(
      decoration: const BoxDecoration(
         borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
             
        gradient: LinearGradient(
begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          colors: <Color>[Color(0xffCB8A58),Color(0xff562B1A),Color(0xffCB8A58,)]),
      ),),
        centerTitle: true,
         title: GradientText('favorite',style: AppTextStyles.nunitoSansBold20, colors: const[Colors.white,Colors.white]),
         
        
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.85,
                  child: ListView.separated(
                     addRepaintBoundaries:false,
                    itemCount: products.length,
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(
                      thickness: 2,
                      height: 24,
                      color: AppColors.cF0F0F0,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return ProductWidget(
                        index: index,
                        controller: controller,
                        product: products[index],
                      );
                    },
                  ),
                ),

               
              ],
            ),
          ),
        ),
      ),
    );
  }
}
