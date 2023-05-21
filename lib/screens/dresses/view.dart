import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_ptoj/screens/dresses/components/contanier.dart';
import 'package:graduation_ptoj/screens/share/appBar.dart';

class DressesScreen extends StatelessWidget {
  const DressesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          MyAppBar(screenName: "Dress"),
           Padding(
             padding:  EdgeInsetsDirectional.only( top: 10.h,start: 12.w,end: 12.w),
             child:  ClipRRect( borderRadius:  BorderRadius.only(topLeft: Radius.circular(20.r),topRight:Radius.circular(20.r) ),clipBehavior: Clip.antiAliasWithSaveLayer,
               child: Container(
                height: 597.h,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 5 / 5,
                        crossAxisCount: 2,
                        mainAxisSpacing: 7.h,
                        crossAxisSpacing: 7.w),
                    itemCount: 12,

                    itemBuilder: (context, index) => ContanierDress(adress: "ldkslkdnkjdnkjs",phone: "01227480159",
                        image:
                            "https://i.pinimg.com/236x/b9/62/44/b9624485009f9cb92dd5e08746e87e4f.jpg")),
          ),
             ),
           ),
        ],
      )),
    );
  }
}