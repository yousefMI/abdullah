import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_ptoj/screens/overview/view.dart';

class ContanierDress extends StatelessWidget {
   ContanierDress({Key? key,required this.image,required this.phone,required this.adress}) : super(key: key);
  String image,phone,adress;

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => OverviewScreen(imagePath: image, phone: phone, adress: adress),)),
      child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20.r))),
        child: ClipRRect(borderRadius:BorderRadius.all(Radius.circular(20.r)) ,child: Image.network(image,fit:BoxFit.fill )) ,
      ),
    );
  }
}
