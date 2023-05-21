import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerMakeup extends StatelessWidget {
  ContainerMakeup(
      {Key? key, required this.image, required this.name, required this.type})
      : super(key: key);
  String image;
  String name;
  String type;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(boxShadow: [
    BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    spreadRadius: 2,
    blurRadius: 7,
    offset: Offset(0, 5))],
    borderRadius: BorderRadius.all(Radius.circular(50.r)),color: Colors.white),
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(50.r)),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      borderRadius: BorderRadius.all(Radius.circular(50.r)),
                      child: Container(height: 80.h, child: Image.network(image))),
                  SizedBox(
                    width: 30.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(name),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(type),
                    ],
                  ),
                ],
              )),
        ),
        SizedBox(
          height: 30.h,
        )
      ],
    );
  }
}
