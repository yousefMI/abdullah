import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerOverview extends StatelessWidget {
   ContainerOverview({Key? key,required this.containerIcon,required this.details}) : super(key: key);
IconData containerIcon;
String details;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsetsDirectional.symmetric(horizontal: 20.w),
      child: Container(height: 50.h,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(25.r)),color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 5)),
      ],),child: Row(
        children: [
          SizedBox(width: 10.w,),
          Icon(containerIcon,color: Colors.black),
          SizedBox(width: 15.w),
          Text(details,style: TextStyle(fontSize: 16)),
        ],
      )),
    );
  }
}
