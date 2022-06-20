import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:messangerui/modules/account.dart';
import 'package:messangerui/shared/component/component.dart';
import 'package:sizer/sizer.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        appBar: AppBar(
          titleSpacing: 5.w,
          backgroundColor: Colors.white,
          elevation: 2,
          title: Row(
            children: [
              InkWell(
                onTap: () {
                  navigateTo(context, AcountScreen());
                },
                child: CircleAvatar(
                  radius: 3.5.h,
                  backgroundImage: const NetworkImage(
                      'https://www.whatsappimages.in/wp-content/uploads/2020/06/Whatsapp-DP-Images-8-300x300.jpg'),
                ),
              ),
              SizedBox(
                width: 3.w,
              ),
              Text(
                'المكالمات',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: CircleAvatar(
                    radius: 3.h,
                    backgroundColor: Colors.grey[100],
                    child: Icon(
                      Icons.call,
                      size: 18.sp,
                      color: Colors.black,
                    ))),
            IconButton(
                onPressed: () {},
                icon: CircleAvatar(
                    radius: 3.h,
                    backgroundColor: Colors.grey[100],
                    child: Icon(
                      Icons.video_call,
                      size: 18.sp,
                      color: Colors.black,
                    ))),
          ],
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.separated(
              itemBuilder: (context, index) => buildCallsItem(),
              separatorBuilder: (context, index) => SizedBox(
                    height: 1.h,
                  ),
              itemCount: 20),
        ),
      );
    });
  }

  Widget buildCallsItem() => ListTile(
        contentPadding: const EdgeInsets.only(right: 10),
        leading: Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            const CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://cdn.al-ain.com/images/2021/12/01/138-213604-abo-trieka-lgtb-society-critics_700x400.jpg'),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(bottom: 3, end: 3),
              child: CircleAvatar(
                backgroundColor: Colors.green.shade100,
                radius: 8,
                child: const Text(
                  '2د',
                  style: TextStyle(fontSize: 10, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
        title: Text(
          "Islam Ahmed ",
          style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: const Text(
          "مكالمه واردة الاربعاء",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: const Icon(
          Icons.call,
          color: Colors.black,
        ),
      );
}
