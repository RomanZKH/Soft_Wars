import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogOutPopUp extends StatefulWidget {
  @override
  State<LogOutPopUp> createState() => _LogOutPopUpState();
}

class _LogOutPopUpState extends State<LogOutPopUp> {
  @override
  Widget build(BuildContext context) {
    return Divide(
        function: () {
          showDialog(
            barrierColor: Colors.transparent,
            context: context,
            builder: (context) {
              return AlertDialog(
                elevation: 2,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white, width: 1.2),
                  borderRadius: BorderRadius.circular(9),
                ),
                title: Container(
                  height: Get.height * 0.42,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: SvgPicture.asset("assets/icons/log_out.svg"),
                      ),
                      SizedBox(height: Get.height * 0.032),
                      GenericButton(
                        width: Get.width * 0.41,
                        height: Get.height * 0.053,
                        label: "Stay",
                        labelSize: 20,
                        function: () {},
                      ),
                      SizedBox(height: Get.height * 0.018),
                      GenericButton(
                        width: Get.width * 0.41,
                        height: Get.height * 0.053,
                        label: "Log out",
                        labelSize: 20,
                        function: () {},
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        settingIcon: "assets/icons/exit.svg",
        settingName: "Log out");
  }
}