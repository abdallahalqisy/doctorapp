import 'package:doctorapp/core/theming/colors.dart';
import 'package:doctorapp/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backGroundColor;
  const AppTextFormField(
      {super.key,
      this.focusBorder,
      this.enabledBorder,
      this.inputTextStyle,
      this.hintStyle,
      required this.hintText,
      this.isObscureText,
      this.suffixIcon,
      this.contentPadding,
      this.backGroundColor});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          isDense: true,
          contentPadding: contentPadding ??
              EdgeInsets.symmetric(horizontal: 28.h, vertical: 18.w),
          focusedBorder: focusBorder ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(
                  color: ColorMenager.mainBlue,
                  width: 1.3,
                ),
              ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: ColorMenager.lighterGrey,
              width: 1.3,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          filled: true,
          fillColor: backGroundColor ?? ColorMenager.moreLightGrey,
          hintStyle: hintStyle ?? TextStyles.font14LightGreyReguler,
          hintText: hintText,
          suffixIcon: suffixIcon),
      obscureText: isObscureText ?? false,
      style: TextStyles.font14DarkBlueMedium,
    );
  }
}
