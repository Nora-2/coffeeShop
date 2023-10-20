import 'package:coffe/features/cart/presentation/views/cart_screen.dart';
import 'package:coffe/features/favourite/presentation/views/favorite_screen.dart';
import 'package:coffe/features/home/presentation/views/home.dart';
import 'package:coffe/features/profile/presentation/views/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'homecubit_state.dart';

class HomecubitCubit extends Cubit<HomecubitState> {
  HomecubitCubit() : super(HomecubitInitial());
  static HomecubitCubit get(context) => BlocProvider.of(context);
 
  // ignore: non_constant_identifier_names
  List<Widget> Screens =const [
    HomePage(),
    FavoriteScreen(),
   CartScreen(),
   ProfileScreen()
  ];
  int indexBottomNavBar = 0;
  void changeIndexBottom(int x) {
    indexBottomNavBar = x;
    emit(BottomNavBarChanged());
  }
}
