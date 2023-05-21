import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_ptoj/screens/share/appBar.dart';
import 'package:graduation_ptoj/screens/suits/components/contanier.dart';

class SuitsScreen extends StatelessWidget {
  const SuitsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          MyAppBar(screenName: "Suits"),
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
                    itemBuilder: (context, index) => ContanierSuits(adress: "ldkslkdnkjdnkjs",phone: "01227480159",
                        image:
                            "https://ts2.mm.bing.net/th?q=%D8%A8%D8%AF%D9%84%20%D8%B1%D8%AC%D8%A7%D9%84%D9%8A%20%D9%84%D9%84%D8%A8%D9%8A%D8%B9%20%D9%81%D9%8A%20%D8%A7%D9%84%D8%A3%D8%B1%D8%AF%D9%86%20:%20%D8%B1%D8%B3%D9%85%D9%8A%D8%A9%20%D9%88%D8%B9%D9%85%D9%84%D9%8A%D8%A9%20:%20%D8%B9%D8%B1%D8%B3%20:%20%D8%B2%D8%A7%D8%B1%D8%A7%20-%20%D8%A7%D9%84%D8%B3%D9%88%D9%82%20%D8%A7%D9%84%D9%85%D9%81%D8%AA%D9%88%D8%AD")),
          ),
             ),
           ),
        ],
      )),
    );
  }
}