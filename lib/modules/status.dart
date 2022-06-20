import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:messangerui/modules/account.dart';
import 'package:messangerui/shared/component/component.dart';
import 'package:sizer/sizer.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
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
                'القصص',
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 1 / 1.4,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(20, (index) => buildGridProduct()),
            ),
          ),
        ),
      );
    });
  }

  Widget buildGridProduct() => Container(
        height: 150,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: const Image(
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://cdn.shopify.com/s/files/1/0249/9697/0574/collections/e7285ed383c289937915bc4284ad12bb_750x.jpg?v=1644878005'),
          ),
        ),
      );
}
