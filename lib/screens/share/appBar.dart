import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAppBar extends StatelessWidget {
   MyAppBar({Key? key,required this.screenName}) : super(key: key);
String screenName;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80.h,
        child: Center(
            child: Text(
              screenName,
              style: TextStyle(fontSize: 30, fontStyle: FontStyle.normal),
            )),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 5)),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.r),
                bottomRight: Radius.circular(40.r))));
  }
}
