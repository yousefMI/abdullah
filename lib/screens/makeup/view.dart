import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_ptoj/screens/photographer/components/container.dart';
import 'package:graduation_ptoj/screens/share/appBar.dart';

class MakeupArtistScreen extends StatefulWidget {
  MakeupArtistScreen({Key? key}) : super(key: key);

  @override
  State<MakeupArtistScreen> createState() => _MakeupArtistScreenState();
}

class _MakeupArtistScreenState extends State<MakeupArtistScreen> {
  //List name = ["Manal Adel", "Roxana", "Hadeer Omar", "sabreen saber"];
  List<String> userNames = [];
  List<String> phoneNumbers = [];
  List<String> profilePicture = [];

  Future<void> getData() async {
    var doc = FirebaseFirestore.instance.collection("users");
    await doc
        .where("accountType", isEqualTo: "RoleType.makeupArtist")
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
      body: SafeArea(
        child: Column(
          children: [
            MyAppBar(screenName: "Makeup artist"),
            FutureBuilder(builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Container(height: 607.h,
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                );

              } else {
                return Container(
                  height: 607.h,
                  width: double.infinity,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsetsDirectional.only(
                      top: 30.h,
                      end: 30.w,
                      start: 30.w,
                    ),
                    itemBuilder: (context, index) => ContainerPhotographer(
                        image: profilePicture[index],
                        name: userNames[index],
                        type: "Makeup artist"),
                    itemCount: userNames.length,
                  ),
                );

              }
            })
          ],
        ),
      ),
    );
  }
}
