import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

class AcountScreen extends StatelessWidget {
  const AcountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          titleSpacing: 5.w,
          backgroundColor: Colors.white,
          elevation: 0,
          foregroundColor: Colors.grey,
          title: Row(
            children: [
              Text(
                'انا',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                            backgroundColor: Color(0xFFE0E0E0),
                            radius: 60,
                            child: Icon(
                              Icons.person,
                              size: 110,
                              color: Colors.white,
                            ),
                          ),
                          CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 20,
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.black,
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      Text(
                        'Mohamed Ahmed',
                        style: TextStyle(fontSize: 20.sp),
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                'الحسابات',
                style: TextStyle(color: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Color(0xFFD500F9),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'ادارة الحسابات',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const Text(
                'الملف الشخصي',
                style: TextStyle(color: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.nightlight_round,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'الوضع المظلم',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Color(0xFF64B5F6),
                      child: Icon(
                        Icons.chat,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'طلبات المراسلة',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.green,
                      child: Icon(
                        Icons.circle,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'حاله النشاط',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.red,
                      child: Icon(
                        Icons.alternate_email,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'اسم المستخدم',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const Text(
                'التفضيلات',
                style: TextStyle(color: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Color(0xFFD500F9),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'الاشعارات و الاصوات',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Color(0xFFD500F9),
                      child: Icon(
                        Icons.delete_sharp,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'الدردشات المورشفة',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Color(0xFF64B5F6),
                      child: Icon(
                        Icons.privacy_tip,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'الخصوصية',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Color(0xFFD500F9),
                      child: Icon(
                        Icons.insert_emoticon_sharp,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'الافاتار',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.signal_cellular_nodata,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'توفير البيانات',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Color(0xFFBBDEFB),
                      child: Icon(
                        Icons.amp_stories,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'القصة',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
