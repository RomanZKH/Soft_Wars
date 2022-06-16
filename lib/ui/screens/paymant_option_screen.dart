import 'package:flutter/material.dart';
import 'package:my_app/index.dart';
class PaymentOptionScreen extends StatefulWidget {
  @override
  _PaymentOptionScreenState createState() => _PaymentOptionScreenState();
}

class _PaymentOptionScreenState extends State<PaymentOptionScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: "Payment",
          textColor: Colors.white,
          backgroundColor: Color(0xFF898DEA),
          centerTitle: true,
          iconLeading: "assets/icons/Left.svg",
        ),
        backgroundColor: Color(0xFF898DEA),
        body: Container(
          padding: EdgeInsets.all(6),
          width: Get.width,
          height: Get.height,
          child: Column(
            children: <Widget>[
              Align(
                child: CustomText(
                  text:
                      "Choose available payment methods\nfor your company",
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  letterSpacing: 1.2,
                  color: Colors.white,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: Get.height * 0.06),
              Container(
                height: Get.height * 0.19,
                width: Get.width * 0.68,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: SvgPicture.asset(
                    "assets/icons/pay.svg",
                  ),
                ),
              ),
              SizedBox(height: Get.height * 0.10),
              PaymentOption(
                customText: "Cash payment",
                iconPayment: "assets/icons/p1.svg",
              ),
              SizedBox(height: Get.height * 0.03),
              PaymentOption(
                  customText: "Payment via terminal",
                  iconPayment: 'assets/icons/p2.svg'),
              SizedBox(height: Get.height * 0.03),
              PaymentOption(
                  customText: 'Contactless payment',
                  iconPayment: "assets/icons/p4.svg"),
              SizedBox(height: Get.height * 0.03),
              PaymentOption(
                  customText: "non-training",
                  iconPayment: 'assets/icons/p3.svg'),
            ],
          ),
        ),
      ),
    );
  }
}
