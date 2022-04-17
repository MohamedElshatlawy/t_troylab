import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextForm extends StatelessWidget {
  CustomTextForm(
      {Key? key,
      this.suffixicon,
      this.onChange,
      this.validate,
      this.suffexIconColor = Colors.grey,
      this.lable,
      required this.controller,
      this.prefixIcon,
      this.type,
      this.onTap,
      this.onSaved,
      this.suffixOnPressed,
      required this.hint,
      this.isPassword = false})
      : super(key: key);
  IconData? prefixIcon;
  TextEditingController? controller;
  IconData? suffixicon;
  TextInputType? type;
  String? lable;
  String hint;
  bool isPassword = false;
  Color suffexIconColor;
  Function()? onTap;
  Function()? onChange;
  Function()? suffixOnPressed;

  FormFieldValidator? validate;
  //Function(String? value)? onSaved;
  Function(String? value)? onSaved;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.w),
      child: TextFormField(
        keyboardType: type,
        obscureText: isPassword,
        controller: controller,
        validator: validate,
        onSaved: onSaved,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(0, 7.0, 0.0, 7.0),
            fillColor: Colors.white,
            isDense: true,
            hintStyle: TextStyle(
              color: Color(0xffB4B4B4),
              fontFamily: 'SSTRoman',
              fontSize: 16.sp,
            ),
            filled: true,
            hintText: hint,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none),
            suffixIcon: IconButton(
              onPressed: suffixOnPressed,
              icon: Icon(
                suffixicon,
                color: suffexIconColor,
              ),
            ),
            prefixIcon: Icon(prefixIcon, color: Color(0xffADADAD))),
        onTap: onTap,
      ),
    );
  }
}
