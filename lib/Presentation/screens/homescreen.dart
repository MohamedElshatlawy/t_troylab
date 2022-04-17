import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maqsaf/Presentation/widgets/item_card.dart';
import 'package:maqsaf/constant/app_colors.dart';

import '../widgets/category_item.dart';
import '../widgets/custom_text_form.dart';

class Test extends StatelessWidget {
  Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Comming Soon ',
          style: TextStyle(color: AppColors.PRIMARY_COLOR),
        ),
      ),
    );
  }
}
