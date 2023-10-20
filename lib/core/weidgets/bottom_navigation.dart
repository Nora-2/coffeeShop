// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
class bottom_navigation extends StatefulWidget {
  const bottom_navigation({super.key});


  @override
  State<bottom_navigation> createState() => _bottom_navigationState();
}

class _bottom_navigationState extends State<bottom_navigation> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: BottomNavigationBar(
        showSelectedLabels: false,
          currentIndex: index,
          onTap: (value) {
            index=value;
            setState(() {

            });
          },
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          items: [
        BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home,
              color: index==0?Colors.orange:Colors.grey.withOpacity(.6),
            )),
        
        BottomNavigationBarItem(
            label: "Favourite",
            icon: Icon(
              Icons.favorite,
              color: index==2?Colors.orange:Colors.grey.withOpacity(.6),
            )),
            BottomNavigationBarItem(
            label: "cart",
            icon: Icon(
              Icons.shopping_cart,
              color: index==1?Colors.orange:Colors.grey.withOpacity(.6),
            )),
        BottomNavigationBarItem(
            label: "Favourite",
            icon: Icon(
              Icons.person,
              color: index==3?Colors.orange:Colors.grey.withOpacity(.6),
            )),
      ]),
    );
  }
}
