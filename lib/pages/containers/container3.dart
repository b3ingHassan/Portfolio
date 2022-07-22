import 'package:flutter/material.dart';
import 'package:hassanmomin/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container3 extends StatefulWidget {
  const Container3({Key? key}) : super(key: key);

  @override
  State<Container3> createState() => _Container3State();
}

class _Container3State extends State<Container3> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileContainer2(),
      desktop: desktopContainer2(),
    );
  }

  //// Mobile Conatiner2 /////
  Widget mobileContainer2() {
    return Container(
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
            "PORTFOLIO",
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
            "Some of my best work",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff3A3A3A),
              fontSize: 44.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }

//// Desktop Conatiner2 ////
  Widget desktopContainer2() {
    return Container(
      height: 650,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Positioned(
            bottom: 0.0,
            child: Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue,
            ),
          ),
          Positioned(
            top: 20,
            bottom: 20.0,
            right: 200.0,
            left: 200.0,
            child: Container(
              padding: EdgeInsets.all(40.0),
              height: 500,
              width: 900,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 25.0, // soften the shadow
                    spreadRadius: 5.0, //extend the shadow
                    offset: Offset(
                      15.0, // Move to right 10  horizontally
                      15.0, // Move to bottom 10 Vertically
                    ),
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'SAY HELLO',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff3A3A3A),
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    "Have a Project idea!\ncome let's have a talk.",
                    style: TextStyle(
                        fontSize: 40.0,
                        color: Color(0xff3A3A3A),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  Text(
                    'Full name',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff3A3A3A),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffF4F4F4)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0xff3A3A3A),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffF4F4F4)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  Text(
                    'Message',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff3A3A3A),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 34.0,
                  ),
                  Container(
                    height: 60.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: Colors.blue,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Send',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(
                          Icons.message,
                          color: Colors.white,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
