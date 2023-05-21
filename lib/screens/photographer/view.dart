import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_ptoj/screens/photographer/components/container.dart';
import 'package:graduation_ptoj/screens/share/appBar.dart';

class PhotographerScreen extends StatefulWidget {
  PhotographerScreen({Key? key}) : super(key: key);

  @override
  State<PhotographerScreen> createState() => _PhotographerScreenState();
}

class _PhotographerScreenState extends State<PhotographerScreen> {
  // List name = ["Ahmed Rashwan", "Mohamed Mokhtar", "Ahmed Samir", "Mohamed Elsayed","Ahmed El Hawary","Ahmed Tarek"];
  //
  // List name1 = ["Manal Adel", "Roxana", "Hadeer Omar", "sabreen saber"];
  List<String> userNames = [];
  List<String> phoneNumbers = [];
  List<String> profilePicture = [];
  //https://scontent.fcai16-1.fna.fbcdn.net/v/t39.30808-6/343439565_561400279461258_5731402117870489543_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeH9J1gDV_0LAcPE3s-nK1OzKh3U640nxB4qHdTrjSfEHpSJwpd_I6EWop9y8IkmXoof_byuL9PzYskrn_iEMnIt&_nc_ohc=4nxqDRTKT5cAX8kTEU7&_nc_ht=scontent.fcai16-1.fna&oh=00_AfCszLyHexmiTDKCrS6IEN2wOYsnSqaxgRQqpKnu16Abfg&oe=646E4443
  getData() async {
    var doc = FirebaseFirestore.instance.collection("users");
    await doc
        .where("accountType", isEqualTo: "RoleType.photographer")
        .get()
        .then((value) {
      value.docs.forEach((element) {
        setState(() {
          // phoneNumbers.add(element.data()['phoneNumber']);
          userNames.add(element.data()['username']);
          profilePicture.add(element.data()['profilePicture']);
          print(element.data());
        });
      });
    });
  }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     toolbarHeight: 60.h, centerTitle: true, title: Text("PhotoGrapher")),
      body: SafeArea(
        child:  Column(
          children: [
MyAppBar(screenName: "Photographer"),
            Container(height: 607.h,width: double.infinity,
              child: ListView.builder(physics: BouncingScrollPhysics(),padding: EdgeInsetsDirectional.only(top: 30.h,end: 30.w,start: 30.w,),
                itemBuilder: (context, index) => ContainerPhotographer(
                    image:profilePicture[index],
                       // "https://scontent.fcai16-1.fna.fbcdn.net/v/t39.30808-6/344449636_1316525272547366_3199489892361267994_n.jpg?stp=cp6_dst-jpg&_nc_cat=1&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHGop-i3CkfXiYMy7zqu1GnOpopsAlQeHY6mimwCVB4dhuvFsdEHipMmEJUb64yzpy-7dlXCJLTDSa_f21mv9XV&_nc_ohc=Pd4b0O1g0m4AX9SN8OW&_nc_ht=scontent.fcai16-1.fna&oh=00_AfDvqoF8OnPvpRZd2eknXwPzddSXalz0SwKW8i1fbm9WEw&oe=646EC057",
                    name: userNames[index],
                    type: "PhotoGrapher"),itemCount: userNames.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}