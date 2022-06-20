import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:messangerui/modules/account.dart';
import 'package:messangerui/shared/component/component.dart';
import 'package:sizer/sizer.dart';

class ChatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          titleSpacing: 5.w,
          backgroundColor: Colors.white,
          elevation: 0,
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
                'الدرشات',
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
                    backgroundColor: Colors.black12,
                    child: Icon(
                      Icons.camera_alt,
                      size: 16.sp,
                      color: Colors.black,
                    ))),
            IconButton(
                onPressed: () {},
                icon: CircleAvatar(
                    radius: 3.h,
                    backgroundColor: Colors.black12,
                    child: Icon(
                      Icons.edit,
                      size: 16.sp,
                      color: Colors.black,
                    ))),
          ],
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(2.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.h),
                      color: Colors.grey[200]),
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        size: 20.sp,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Text(
                        "بحث",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                              radius: 4.h,
                              backgroundColor: Colors.grey[100],
                              child: Icon(
                                Icons.video_call_rounded,
                                size: 26.sp,
                                color: Colors.black,
                              )),
                          SizedBox(
                            width: 10.w,
                            child: Text(
                              "انشاء غرفة",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 13.sp, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      SizedBox(
                        height: 14.h,
                        child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => buildStoryItem(),
                            separatorBuilder: (context, index) => SizedBox(
                                  width: 4.5.w,
                                ),
                            itemCount: 5),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => buildChatItem(),
                    separatorBuilder: (context, index) => SizedBox(
                          height: 2.h,
                        ),
                    itemCount: 10)
              ],
            ),
          ),
        ),
      );
    });
  }

  Widget buildChatItem() => ListTile(
        onTap: () {},
        contentPadding: const EdgeInsets.all(0),
        leading: Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            const CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://www.momswhothink.com/wp-content/uploads/shutterstock_609195809-e1583816666156.jpg'),
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
        title: const Text(
          "Aya mohamed ",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: const Text(
          "hello Ali l am Ahmed How Are you",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: const Text("02:00pm"),
      );

  Widget buildStoryItem() => SizedBox(
        width: 60,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: const [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://see.news/wp-content/uploads/2020/10/2020-02-01T165121Z_1905305979_RC2SRE9R3CBK_RTRMADP_3_SOCCER-ENGLAND-LIV-SOU-REPORT.jpg'),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(bottom: 3, end: 3),
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 7,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Ahmed Ail",
              maxLines: 2,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      );
}
