import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lged_inspection/app/utils/dimens.dart';

import '../routes/app_pages.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leadingWidth: Dimension.width30 * 3,
        leading: InkWell(
          onTap: () {
            Get.toNamed(Routes.LOGIN);
          },
          child: Container(
            /* margin: EdgeInsets.only(
                                left: Dimension.width20 * 3,
                                right: Dimension.width20 + Dimension.width20 * 3,
                                bottom: Dimension.height20 * 2),*/
            height: Dimension.height20 * 5,
            width: Dimension.width30 * 8,
            //width: double.maxFinite,
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage("assets/image/appBarLogo.png"),
                  fit: BoxFit.fitWidth),
              borderRadius: BorderRadius.circular(Dimension.radius20),
            ),
          ),
        ),
        actions: [
          Row(
            children: [
              Icon(
                Icons.notifications,
                color: Colors.black.withOpacity(0.4),
              ),
              SizedBox(
                width: Dimension.screenWidth / 2.8,
              ),
              Container(
                /* margin: EdgeInsets.only(
                                  left: Dimension.width20 * 3,
                                  right: Dimension.width20 + Dimension.width20 * 3,
                                  bottom: Dimension.height20 * 2),*/
                height: Dimension.height20 * 2,
                width: Dimension.width20 * 2,
                //width: double.maxFinite,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage("assets/image/profileHead.png"),
                      fit: BoxFit.scaleDown),
                  borderRadius: BorderRadius.circular(Dimension.radius20),
                ),
              ),
              SizedBox(
                width: Dimension.width10,
              ),
            ],
          ),
        ]);
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
