import 'package:flutter/material.dart';
import 'package:hassanmomin/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container2 extends StatefulWidget {
  const Container2({Key? key}) : super(key: key);

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileContainer2(),
      desktop: desktopContainer2(),
    );
  }

  //// Mobile Conatiner2 /////
  Widget mobileContainer2() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: w! / 10,
          vertical: 20.0,
        ),
        width: double.infinity,
        color: Color(0xffEBF4FF),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "SERVICES",
              style: TextStyle(
                color: Color(0xff626262),
                fontSize: 24.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "What services do I provide?",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff3A3A3A),
                fontSize: 44.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 34,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ServiceConatiner(
                  android,
                  "Have an app idea in mind or want to \ngrow your business in mobile world, we'll \nhelp you do it",
                  Color(0xffDFEEFF),
                ),
                SizedBox(
                  height: 14,
                ),
                ServiceConatiner(
                  web,
                  "Have an app idea in mind or want to \ngrow your business in mobile world, we'll \nhelp you do it",
                  Color(0xffFFE7DF),
                ),
                SizedBox(
                  height: 14,
                ),
                ServiceConatiner(
                  uiux,
                  "Have an app idea in mind or want to \ngrow your business in mobile world, we'll \nhelp you do it",
                  Color(0xffE3F8E3),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

//// Desktop Conatiner2 ////
  Widget desktopContainer2() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: w! / 10,
        vertical: 20.0,
      ),
      height: 600,
      width: double.infinity,
      color: Color(0xffEBF4FF),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "SERVICES",
            style: TextStyle(
              color: Color(0xff626262),
              fontSize: 24.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "What services do I provide?",
            style: TextStyle(
              color: Color(0xff3A3A3A),
              fontSize: 44.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 34,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ServiceConatiner(
                android,
                "Have an app idea in mind or want to \ngrow your business in mobile world, we'll \nhelp you do it",
                Color(0xffDFEEFF),
              ),
              ServiceConatiner(
                web,
                "Have an app idea in mind or want to \ngrow your business in mobile world, we'll \nhelp you do it",
                Color(0xffFFE7DF),
              ),
              ServiceConatiner(
                uiux,
                "Have an app idea in mind or want to \ngrow your business in mobile world, we'll \nhelp you do it",
                Color(0xffE3F8E3),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget ServiceConatiner(String image, text, Color color) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 320,
      width: 320,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0), color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: color,
            ),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    image,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            "App Development",
            style: TextStyle(
              color: Color(0xff3A3A3A),
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff3A3A3A),
              fontSize: 14.0,
              height: 1.6,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
