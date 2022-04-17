import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maqsaf/Business%20Logic/shared/app_Bloc/app_bloc.dart';

class CartItem extends StatelessWidget {
  const CartItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290.h,
      decoration: BoxDecoration(
          color: const Color(0xff13A69A),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(10.0.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10), // Image border
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(35), // Image radius
                    child:
                        Image.asset('assets/images/kid.png', fit: BoxFit.cover),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.storefront_outlined,
                                color: Colors.white,
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                        text: 'رقم',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'SSTMedium',
                                            fontSize: 15.sp)),
                                    TextSpan(
                                        text: '150',
                                        style: TextStyle(
                                            color: Color(0xffAEECE7),
                                            fontFamily: 'SSTBold',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.sp)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 193.w,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 25.w,
                              height: 25.h,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.white, width: 1.w)),
                              child: InkWell(
                                onTap: () {
                                  AppCubit.get(context).closeCartItem();
                                },
                                child: Icon(
                                  Icons.close,
                                  size: 15.w,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: Text(
                        'محمد بن عبد الله الفلاج',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'SSTMedium',
                            fontSize: 16.sp),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.credit_card,
                                color: Colors.white,
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                        text: 'الرصيد',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'SSTMedium',
                                            fontSize: 15.sp)),
                                    TextSpan(
                                        text: '10,000 ريال',
                                        style: TextStyle(
                                            color: Color(0xffAEECE7),
                                            fontFamily: 'SSTBold',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.sp)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 30.w,
                          ),
                          Row(
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                        text: 'الحد اليومي',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'SSTMedium',
                                            fontSize: 15.sp)),
                                    TextSpan(
                                        text: '15.00 ريال',
                                        style: TextStyle(
                                            color: Color(0xffAEECE7),
                                            fontFamily: 'SSTBold',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.sp)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 169.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                height: 100.h,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => buildCartItem(),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 1.w,
                        ),
                    itemCount: 6),
              ),
              SizedBox(
                height: 8.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: ' الأجمالي ',
                              style: TextStyle(
                                  fontFamily: 'SSTMedium', fontSize: 14.sp)),
                          TextSpan(
                              text: '5 ريال',
                              style: TextStyle(
                                  color: Color(0xff13A69A),
                                  fontFamily: 'SSTBold',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp)),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 66.w,
                        height: 35.h,
                        child: Center(
                          child: Text(
                            'شراء',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'SSTMedium',
                                fontSize: 15.sp),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            color: Color(0xff208178)),
                      ),
                    )
                  ],
                ),
              )
            ]),
          )
        ],
      ),
    );
  }

  buildCartItem() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100.h,
          child: Stack(
            children: [
              Center(
                child: Container(
                  height: 70.h,
                  width: 60.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1, color: Color(0xffE9EBEF))),
                  child: Image(image: AssetImage('assets/images/Image.png')),
                ),
              ),
              Positioned(
                top: 0.h,
                left: 1.w,
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 10,
                  child: Icon(
                    Icons.delete,
                    color: Colors.white,
                    size: 12,
                  ),
                ),
              ),
              Positioned(
                top: 0.h,
                left: 20.w,
                child: CircleAvatar(
                    backgroundColor: Color(0xff13A69A),
                    radius: 10,
                    child: Text(
                      '2',
                      style: TextStyle(
                          fontSize: 13.sp,
                          fontFamily: 'SSTMedium',
                          color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      );
}
