import 'package:my_app/index.dart';
import 'package:my_app/ui/service_station/helper/generic_button.dart';

class STOSetting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          centerTitle: true,
          title: "Settings",
          textColor: Colors.white,
          backgroundColor: Color(0xFF979BF5),
          iconLeading: 'assets/icons/Left.svg'),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.fromLTRB(7, 2, 7, 2),
          width: Get.width,
          height: Get.height,
          color: Color(0xFF979BF5),
          child: Column(
            children: <Widget>[
              Divide(
                  function: () => Get.toNamed(Routes.SUPPORT_SCREEN),
                  settingIcon: "assets/icons/car_replacement.svg",
                  settingName: "Service station info"),
              Divide(
                  function: () => Get.toNamed(Routes.SUPPORT_SCREEN),
                  settingIcon: "assets/icons/persone.svg",
                  settingName: "Company info"),
              Divide(
                  function: () => Get.toNamed(Routes.SUPPORT_SCREEN),
                  settingIcon: "assets/icons/people.svg",
                  settingName: "Employees"),
              Divide(
                  function: () => Get.toNamed(Routes.SUPPORT_SCREEN),
                  settingIcon: "assets/icons/cash.svg",
                  settingName: "Payment details"),
              SizedBox(height: Get.height * 0.01),
              Divider(
                color: Colors.white,
                thickness: 0.6,
                height: 1.4,
              ),
              SizedBox(height: Get.height * 0.0197),
              Divide(
                  function: () => Get.toNamed(Routes.NOTIFICATION_SCREEN),
                  settingIcon: "assets/icons/icon_notifications.svg",
                  settingName: "Notifications"),
              Divide(
                  function: () => Get.toNamed(Routes.POLICY_SCREEN),
                  settingIcon: "assets/icons/icon_privacy_policy.svg",
                  settingName: "Privacy policy"),
              Divide(
                  function: () => Get.toNamed(Routes.TERMS_SCREEN),
                  settingIcon: "assets/icons/icon_terms_use.svg",
                  settingName: "Terms of use"),
              Divide(
                settingIcon: "assets/icons/share.svg",
                settingName: "Invite",
                function: () async {
                  await Share.share("Welcome");
                },
              ),
              SizedBox(height: Get.height * 0.0197),
              Divider(
                color: Colors.white,
                thickness: 0.6,
                height: 1.4,
              ),
              SizedBox(height: Get.height * 0.0197),
              Divide(
                  function: () => Get.toNamed(Routes.FUNCTION_TIPS_SCREEN),
                  settingIcon: "assets/icons/tips.svg",
                  settingName: "Tips"),
              Divide(
                  function: () => Get.toNamed(Routes.ABOUT_US_SCREEN),
                  settingIcon: "assets/icons/icon_about_us.svg",
                  settingName: "About us"),
              Divide(
                  function: () => Get.toNamed(Routes.ANSWER_QUESTION_SCREEN),
                  settingIcon: "assets/icons/icon_help.svg",
                  settingName: "Questions and answers"),
              Divide(
                  function: () => Get.toNamed(Routes.SUPPORT_SCREEN),
                  settingIcon: "assets/icons/icon_support.svg",
                  settingName: "Support"),
              SizedBox(height: Get.height * 0.0197),
              Divider(
                color: Colors.white,
                thickness: 0.6,
                height: 1.4,
              ),
              SizedBox(height: Get.height * 0.0197),
              Divide(
                  function: () => Get.toNamed(Routes.SUPPORT_SCREEN),
                  settingIcon: "assets/icons/black_list.svg",
                  settingName: "Black list"),
              Divide(
                  function: () => Get.toNamed(Routes.SUPPORT_SCREEN),
                  settingIcon: "assets/icons/add_screenshot.svg",
                  settingName: "Add company"),
              LogOutPopUp()
            ],
          ),
        ),
      ),
    );
  }
}


