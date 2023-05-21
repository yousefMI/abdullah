import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_ptoj/screens/overview/container.dart';
import 'package:graduation_ptoj/screens/share/appBar.dart';

class OverviewScreen extends StatelessWidget {
  OverviewScreen({Key? key, required this.imagePath,required this.phone,required this.adress}) : super(key: key);
  String imagePath,adress,phone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          MyAppBar(screenName: "overview"),
          //SizedBox(height: 10.h,),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(
                horizontal: 40.w, vertical: 20.h),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.r))),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20.r)),
                  child: Image.network(imagePath, fit: BoxFit.fill)),
            ),
          ),
          Center(
            child: Container(
                width: 130.w,
                height: 40.h,
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.all(Radius.circular(30.r))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 10.w,
                      height: 10.h,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius:
                              BorderRadius.all(Radius.circular(40.r))),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "Available",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),

                  ],
                ),

            ),
          ),
          SizedBox(height: 30.h,),
          ContainerOverview(containerIcon: Icons.location_on, details: adress),
          SizedBox(height: 30.h,),
          ContainerOverview(containerIcon: Icons.phone, details: phone),
        ],
      )),
    );
  }
}
