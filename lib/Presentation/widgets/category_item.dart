import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant/app_colors.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem({Key? key, required this.image, required this.text})
      : super(key: key);
  String image;
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Row(
        children: [
          Image(
            image: AssetImage(
              image,
            ),
          ),
          SizedBox(
            width: 5.w,
          ),
          Text(
            text,
            style: TextStyle(
                fontFamily: 'SSTMedium',
                fontSize: 15.sp,
                color: AppColors.PRIMARY_COLOR),
          )
        ],
      ),
    );
  }
}
