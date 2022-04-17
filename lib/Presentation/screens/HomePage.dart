import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maqsaf/Business%20Logic/shared/app_Bloc/app_bloc.dart';
import 'package:maqsaf/Business%20Logic/shared/app_Bloc/app_states.dart';
import 'package:maqsaf/Presentation/widgets/cart_item.dart';
import 'package:maqsaf/Presentation/widgets/category_item.dart';
import 'package:maqsaf/Presentation/widgets/custom_text_form.dart';
import 'package:maqsaf/Presentation/widgets/item_card.dart';

import '../../constant/app_colors.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  List<Map<String, String>> categoryData = [
    {'image': 'assets/images/pizzaslice.png', 'title': 'بيتزا'},
    {'image': 'assets/images/hamburger.png', 'title': 'سندوتشات'},
    {'image': 'assets/images/coffeecup.png', 'title': 'مشروبات'},
    {'image': 'assets/images/coffeecup.png', 'title': 'مشروبات'},
    {'image': 'assets/images/coffeecup.png', 'title': 'مشروبات'},
  ];
  List<Map<String, String>> itemData = [
    {
      'image': 'assets/images/chip.png',
      'title': 'عصير تفاح 250مل',
      'qty': '5',
      'price': '7.50 ريال',
    },
    {
      'image': 'assets/images/chip.png',
      'title': 'عصير تفاح 250مل',
      'qty': '5',
      'price': '7.50 ريال',
    },
    {
      'image': 'assets/images/chip.png',
      'title': 'عصير تفاح 250مل',
      'qty': '5',
      'price': '7.50 ريال',
    },
    {
      'image': 'assets/images/chip.png',
      'title': 'عصير تفاح 250مل',
      'qty': '5',
      'price': '7.50 ريال',
    },
    {
      'image': 'assets/images/chip.png',
      'title': 'عصير تفاح 250مل',
      'qty': '5',
      'price': '7.50 ريال',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              height: 296.h,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Color(0xff245550),
                    Color(0xff13A69A),
                  ])),
              child: Column(
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                              'assets/images/Notificationicon.svg'),
                          SizedBox(
                            width: 100.w,
                          ),
                          Image.asset('assets/images/Maqsafi_logo.png')
                        ]),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Row(
                      children: [
                        Container(
                          height: 56.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xff53BAFF),
                                    Color(0xff0C75EC),
                                  ])),
                          child: Center(
                            child: SvgPicture.asset('assets/images/user.svg'),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          height: 56.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xffFFC85A),
                                    Color(0xffFF9900),
                                  ])),
                          child: Center(
                            child: SvgPicture.asset('assets/images/search.svg'),
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: Container(
                            width: 230.w,
                            child: CustomTextForm(
                              controller: null,
                              hint: 'اسم الطالب',
                              suffixicon: Icons.search,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 170,
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  padding: EdgeInsets.only(
                    bottom: 10.w,
                  ),
                  decoration: const BoxDecoration(
                      color: Color(0xffE9EBEF),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  height: MediaQuery.of(context).size.height - 200.h,
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BlocBuilder<AppCubit, AppStates>(
                            builder: (context, state) {
                              if (state is ShowAddToCartItems)
                                return CartItem();
                              else if (state is CloseAddToCartItems)
                                return Container();
                              else
                                return Container();
                            },
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 45.h,
                                width: 45.w,
                                decoration: BoxDecoration(
                                    color: AppColors.PRIMARY_COLOR,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    'الكل',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13.sp,
                                        fontFamily: 'SSTMedium'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Container(
                                height: 45.h,
                                width: MediaQuery.of(context).size.width - 60.w,
                                child: ListView.separated(
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) => CategoryItem(
                                        image:
                                            "${categoryData[index]['image']}",
                                        text:
                                            "${categoryData[index]['title']}"),
                                    separatorBuilder: (context, index) =>
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                    itemCount: categoryData.length),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          GridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: itemData.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10.w,
                              mainAxisSpacing: 10.h,
                              childAspectRatio: MediaQuery.of(context)
                                      .size
                                      .width /
                                  (MediaQuery.of(context).size.height / 1.6),
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              return ItemCard(
                                  image: "${itemData[index]['image']}",
                                  price: "${itemData[index]['price']}",
                                  title: "${itemData[index]['title']}",
                                  qty: "${itemData[index]['qty']}");
                            },
                          ),
                          SizedBox(
                            height: 100.h,
                          )
                        ]),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
