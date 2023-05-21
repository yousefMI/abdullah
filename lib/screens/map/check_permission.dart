
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:graduation_ptoj/screens/map/view.dart';
import 'package:graduation_ptoj/screens/share/appBar.dart';


class CheckPermissionScreen extends StatelessWidget {

  const CheckPermissionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              MyAppBar(screenName: "Map"),
              Align(alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsetsDirectional.symmetric(horizontal: 15),
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,

        children: [
          SizedBox(height:270.h ,),
                  Text("please check if Location Services is open"),
                  SizedBox(height: 30,),
                  Container(width: 100,height: 50,
                    child: ElevatedButton(onPressed: ()async{  bool services;
                    LocationPermission per;
                    services = await Geolocator.isLocationServiceEnabled();
                    if (services == false) {
                      ScaffoldMessenger.of(context ).showSnackBar(
                          const SnackBar(content: Text('Please open Location services')));
                      per = await Geolocator.requestPermission();
                    }else{
                    per = await Geolocator.checkPermission();
                    if (per == LocationPermission.denied) {
                      per = await Geolocator.requestPermission();
                      // if (per == LocationPermission.always) {
                      //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyMap(),));
                      // }
                    }
                    else if (per == LocationPermission.always) {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyMap(),));
                    }
                    }}, child:  Center(child: Text("Open Services",))),
                  )
        ],
      ),
                ),
              ),
            ],
          )),
    );
  }
}
