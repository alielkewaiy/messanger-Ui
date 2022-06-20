import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:messangerui/modules/account.dart';
import 'package:messangerui/shared/component/component.dart';
import 'package:sizer/sizer.dart';

class PeopleScreen extends StatelessWidget {
  const PeopleScreen({Key? key}) : super(key: key);

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
                'الاشخاص',
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
                      Icons.contact_page_outlined,
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
              itemBuilder: (context, index) => buildPeopleItem(),
              separatorBuilder: (context, index) => SizedBox(
                    height: 1.h,
                  ),
              itemCount: 20),
        ),
      );
    });
  }

  Widget buildPeopleItem() => ListTile(
        onTap: () {},
        contentPadding: const EdgeInsets.only(right: 10),
        leading: Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            const CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://www.annahar.com/ContentFiles/197156Image1.jpg?version=2510723'),
            ),
          ],
        ),
        title: Text(
          "Mohamed Ahmed ",
          style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      );
}
