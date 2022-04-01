import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextNormal extends StatelessWidget {
  final String title;
  final Color? colors;
  final double? size;
  final double? height;
  final bool? isCenter;
  final FontWeight? fontWeight;
  TextOverflow? textOverflow;
  int? maxLines;
  TextAlign? textAlign;

  TextNormal(
      {Key? key,
        required this.title,
        this.colors,
        this.size,
        this.height,
        this.isCenter,
        this.maxLines,
        this.textAlign,
        this.textOverflow,
        this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign ?? (isCenter != null ? TextAlign.center : null),
      maxLines: maxLines,
      style: TextStyle(
        overflow: textOverflow,
        color: colors ?? Colors.white,
        fontWeight: fontWeight ?? FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontFamily: 'Source Sans Pro',
        fontSize: size ?? 17.sp,
        height: height ?? 1.3.h,
      ),
    );
  }
}
