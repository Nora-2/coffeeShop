import 'package:coffe/core/cubit_home/homecubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({
    super.key,
  });

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomecubitCubit, HomecubitState>(
      builder: (context, state) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
      color: Colors.white,
      child: BottomNavigationBar(
         selectedItemColor: Colors.orange,
              unselectedItemColor: Colors.black,
        selectedLabelStyle: const TextStyle(color: Colors.orange),
        unselectedLabelStyle: const TextStyle(color: Colors.black),
         currentIndex: HomecubitCubit.get(context).indexBottomNavBar,
              showUnselectedLabels: true,
              type: BottomNavigationBarType.fixed,
         onTap: (value) {
                HomecubitCubit.get(context).changeIndexBottom(value);},
          backgroundColor: Colors.white,
          items: [
        BottomNavigationBarItem(
        activeIcon: ShaderMask(
              shaderCallback: (Rect bounds) {
                return const RadialGradient(
                  center: Alignment.topLeft,
                  radius: 0.5,
                  colors: <Color>[Color(0xffCB8A58),Color(0xff562B1A)
                  ],
                  tileMode: TileMode.repeated,
                ).createShader(bounds);
              },
              child:const Icon(Icons.home),
            ),
            icon: const Icon(Icons.home, color: Colors.grey),
            label: "Home",
          
            ),
        
        BottomNavigationBarItem(
          activeIcon: ShaderMask(
              shaderCallback: (Rect bounds) {
                return const RadialGradient(
                  center: Alignment.topLeft,
                  radius: 0.5,
                  colors: <Color>[Color(0xffCB8A58),Color(0xff562B1A)
                  ],
                  tileMode: TileMode.repeated,
                ).createShader(bounds);
              },
              child:const Icon(Icons.favorite),
            ),
            icon: const Icon(Icons.favorite, color: Colors.grey),
            label: "Favourite",
        ),
            BottomNavigationBarItem(
              activeIcon: ShaderMask(
              shaderCallback: (Rect bounds) {
                return const RadialGradient(
                  center: Alignment.topLeft,
                  radius: 0.5,
                  colors: <Color>[Color(0xffCB8A58),Color(0xff562B1A)
                  ],
                  tileMode: TileMode.repeated,
                ).createShader(bounds);
              },
              child:const Icon(Icons.shopping_cart),
            ),
            icon:const  Icon(Icons.shopping_cart, color: Colors.grey),
            label: "cart",
            ),
        BottomNavigationBarItem(
            label: "profile",
            activeIcon: ShaderMask(
              shaderCallback: (Rect bounds) {
                return const RadialGradient(
                  center: Alignment.topLeft,
                  radius: 0.5,
                  colors: <Color>[Color(0xffCB8A58),Color(0xff562B1A)
                  ],
                  tileMode: TileMode.repeated,
                ).createShader(bounds);
              },
              child:const Icon(Icons.person),
            ),
            icon: const Icon(Icons.person, color: Colors.grey),
            ),
      ]),
    )
      ),
      listener: (BuildContext context, HomecubitState state) {},
    );
  }
}
