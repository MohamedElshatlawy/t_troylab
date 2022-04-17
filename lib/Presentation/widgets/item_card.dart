import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maqsaf/Business%20Logic/shared/app_Bloc/app_bloc.dart';

import '../../constant/app_colors.dart';

class ItemCard extends StatelessWidget {
  ItemCard(
      {Key? key,
      required this.image,
      required this.price,
      required this.title,
      required this.qty})
      : super(key: key);
  String image;
  String title;
  String price;
  String qty;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Container(
        height: 280.h,
        width: 160.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                child: Container(
                  height: 40.h,
                  width: 76.w,
                  decoration: BoxDecoration(
                      color: Color(0xffE8F8F7),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: EdgeInsets.all(5.0.h),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.directions_run_rounded,
                          color: AppColors.PRIMARY_COLOR,
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          '200 Kcal',
                          style: TextStyle(
                              color: AppColors.PRIMARY_COLOR,
                              fontSize: 14.sp,
                              fontFamily: 'SSTMedium'),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Icon(
                  Icons.info_outline,
                  color: Color(0xff0FA59A).withOpacity(0.41),
                ),
              )
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Image(
            image: AssetImage(image),
            width: 79.w,
            height: 115.h,
          ),
          Text(
            title,
            style: TextStyle(
                fontFamily: 'SSTMedium',
                fontSize: 14.sp,
                fontWeight: FontWeight.w500),
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: 'الكمية بالمخزون: ',
                    style: TextStyle(fontFamily: 'SSTMedium', fontSize: 12.sp)),
                TextSpan(
                    text: '$qty',
                    style: TextStyle(
                        color: AppColors.PRIMARY_COLOR,
                        fontFamily: 'SSTBold',
                        fontWeight: FontWeight.bold,
                        fontSize: 13.sp)),
              ],
            ),
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        AppCubit.get(context).showCartItem();
                      },
                      child: CircleAvatar(
                        radius: 15.w,
                        backgroundColor: AppColors.PRIMARY_COLOR,
                        child: const Icon(Icons.add),
                      )),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    price,
                    style: TextStyle(
                        color: AppColors.PRIMARY_COLOR,
                        fontSize: 15.sp,
                        fontFamily: 'SSTBold'),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
