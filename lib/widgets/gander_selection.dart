import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum GenderType { male, female }

class GenderSelection extends StatefulWidget {
  const GenderSelection({Key? key}) : super(key: key);

  @override
  GenderSelectionState createState() => GenderSelectionState();
}

class GenderSelectionState extends State<GenderSelection> {
  GenderType? _selectedGender;

  final List<GenderOption> _genderOptions = [
    const GenderOption(
      title: 'Male',
      imagePath: 'assets/images/icons8-male-user.gif',
      type: GenderType.male,
    ),
    const GenderOption(
      title: 'Female',
      imagePath: 'assets/images/icons8-circled-user-female-skin-type-7.gif',
      type: GenderType.female,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: _genderOptions
          .map(
            (option) => GestureDetector(
              onTap: () {
                setState(() {
                  _selectedGender = option.type;
                });
              },
              child: Container(
                margin:  EdgeInsets.only(right: 10.w),
                padding:  EdgeInsets.all(10.r),
                decoration: BoxDecoration(
                  color: _selectedGender == option.type
                      ? const Color(0xffF7C8E0)
                      : Colors.white,
                  borderRadius: BorderRadius.circular(30.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      option.imagePath,
                      width: 40.w,
                      height: 40.h,
                    ),
                     SizedBox(height: 10.h),
                    Text(
                      option.title,
                      style: TextStyle(
                        fontSize: 10,
                        color: _selectedGender == option.type
                            ? Colors.white
                            : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}

class GenderOption {
  final String title;
  final String imagePath;
  final GenderType type;

  const GenderOption({
    required this.title,
    required this.imagePath,
    required this.type,
  });
}
