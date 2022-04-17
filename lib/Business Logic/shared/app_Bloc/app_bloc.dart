import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maqsaf/Business%20Logic/shared/app_Bloc/app_states.dart';
import 'package:maqsaf/Presentation/screens/homescreen.dart';

import '../../../Presentation/screens/HomePage.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppStateInit());
  static AppCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  bool showItemCart = false;
  List<Widget> screens = [
    HomePage(),
    Test(),
    Test(),
    Test(),
    Test(),
  ];
  void changeBottomNavBar(int index) {
    currentIndex = index;

    emit(AppLayoutChangBottomNavState());
  }

  void showCartItem() {
    print('emited');
    showItemCart = true;
    emit(ShowAddToCartItems());
  }

  void closeCartItem() {
    print('emited');
    showItemCart = false;
    emit(CloseAddToCartItems());
  }
}
