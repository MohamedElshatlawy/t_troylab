import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Business Logic/shared/app_Bloc/app_bloc.dart';
import '../../Business Logic/shared/app_Bloc/app_states.dart';

class AppLayout extends StatelessWidget {
  AppLayout({Key? key}) : super(key: key);
  var selectedColor = Color(0xff13A69A);
  var unSelectedColor = Color(0xff818181);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              elevation: 30,
              selectedItemColor: selectedColor,
              unselectedItemColor: unSelectedColor,
              selectedLabelStyle:
                  const TextStyle(fontFamily: 'SSTMedium', fontSize: 12),
              unselectedLabelStyle:
                  const TextStyle(fontFamily: 'SSTMedium', fontSize: 10),
              onTap: (index) {
                cubit.changeBottomNavBar(index);
              },
              currentIndex: cubit.currentIndex,
              items: const [
                BottomNavigationBarItem(
                    label: 'الرئيسية',
                    tooltip: 'الرئيسية',
                    icon: Icon(Icons.home_filled)),
                BottomNavigationBarItem(
                    label: 'المحفظة',
                    tooltip: 'المحفظة',
                    icon: Icon(Icons.money)),
                BottomNavigationBarItem(
                    label: 'المبيعات',
                    tooltip: 'المبيعات',
                    icon: Icon(Icons.library_books_sharp)),
                BottomNavigationBarItem(
                  label: 'طلبات مسبقة',
                  tooltip: 'طلبات مسبقة',
                  icon: Icon(Icons.shopping_cart_checkout),
                ),
                BottomNavigationBarItem(
                  label: 'المزيد',
                  tooltip: 'المزيد',
                  icon: Icon(Icons.more_horiz),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
