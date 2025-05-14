import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../../../../global/constant/assets.dart';
import '../../../../global/constant/styles.dart';
import '../../routes/app_pages.dart';
import '../../uttils/config.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        shape: Border.all(),
        width: Get.width * 0.6,
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          Stack(
            children: [
              Image.asset(
                AppAssets.imgSideMenuBg,
                fit: BoxFit.cover,
                height: Get.height * 0.25,
                width: Get.width,
              ),
              Positioned(
                left: 20,
                top: Get.height * 0.07,
                child: SizedBox(
                  height: 50,
                  width: 50,
                  child: Text("data"),
                ),
              ),
              Positioned(
                  left: 20,
                  top: Get.height * 0.145,
                  child: Text(
                   "",
                    style: AppStyles.txt14sizeW500ColorBlack,
                  )),
              Positioned(
                  left: 20,
                  top: Get.height * 0.17,
                  child: Text(
                   "",
                    style: AppStyles.txt14sizeW500ColorBlack,
                  )),
              Positioned(
                  left: 20,
                  top: Get.height * 0.2,
                  child: Row(
                    children: [
                      Text(
                        "KYC",
                        style: AppStyles.txt14sizeW500ColorBlack,
                      ),
                      SizedBox(width: 3),
                      Image.asset(
                              AppAssets.icKycTrue,
                              height: 25,
                              width: 25
                            ),
                    ],
                  )),
            ],
          ),
          InkWell(
            onTap: () {
              Get.offAllNamed(Routes.home);
            },
            child: Container(
                margin: EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  'Dashboard',
                  style: AppStyles.txt14sizeW700ColorGredient,
                )),
          ),
          InkWell(
            onTap: () {
            },
            child: Container(
                margin: EdgeInsets.only(left: 20, top: 25),
                child: Text(
                  'New Registration',
                  style: AppStyles.txt14sizeW700ColorGredient,
                )),
          ),
          InkWell(
            onTap: () {
              Get.back();
            },
            child: Container(
                margin: EdgeInsets.only(left: 20, top: 25),
                child: Text(
                  'Schedule Order',
                  style: AppStyles.txt14sizeW700ColorGredient,
                )),
          ),
          InkWell(
            onTap: () {
                 Get.offAllNamed(Routes.scheduleOrder);
            },
            child: Container(
                margin: EdgeInsets.only(left: 20, top: 25),
                child: Text(
                  'Schedule Order',
                  style: AppStyles.txt14sizeW700ColorGredient,
                )),
          ),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.scheduleOrder);
            },
            child: Container(
                margin: EdgeInsets.only(left: 20, top: 25),
                child: Text(
                  'My Community Sales',
                  style: AppStyles.txt14sizeW700ColorGredient,
                )),
          ),
          InkWell(
            onTap: () {

            },
            child: Container(
                margin: EdgeInsets.only(left: 20, top: 25),
                child: Text(
                  'Products',
                  style: AppStyles.txt14sizeW700ColorGredient,
                )),
          ),
          InkWell(
            onTap: () {

            },
            child: Container(
                margin: EdgeInsets.only(left: 20, top: 25),
                child: Text(
                  'Documents',
                  style: AppStyles.txt14sizeW700ColorGredient,
                )),
          ),
          InkWell(
            onTap: () {
              Config.webViewAppbarText = "Events";
            },
            child: Container(
                margin: EdgeInsets.only(left: 20, top: 25),
                child: Text(
                  'Events',
                  style: AppStyles.txt14sizeW700ColorGredient,
                )),
          ),
          InkWell(
            onTap: () {
              Config.webViewAppbarText = "My Profile";
            },
            child: Container(
                margin: EdgeInsets.only(left: 20, top: 25),
                child: Text(
                  'My Profile',
                  style: AppStyles.txt14sizeW700ColorGredient,
                )),
          ),
          InkWell(
              onTap: () {
              },
              child: Container(
                  margin: EdgeInsets.only(left: 20, top: 25),
                  child: Text(
                    'IBO Support',
                    style: AppStyles.txt14sizeW700ColorGredient,
                  )))
        ]));
  }
}
