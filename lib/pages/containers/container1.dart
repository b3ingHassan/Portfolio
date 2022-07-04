import 'package:flutter/material.dart';
import 'package:hassanmomin/utils/colors.dart';
import 'package:hassanmomin/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container1 extends StatefulWidget {
  const Container1({Key? key}) : super(key: key);

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: desktopContainer1(),
      mobile: mobileConatiner1(),
    );
  }

  Widget desktopContainer1() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: w! / 10,
        vertical: 20.0,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Track your \nexpenses to \nsave money",
                    style: TextStyle(
                        fontSize: w! / 20,
                        fontWeight: FontWeight.bold,
                        height: 1.2),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Helps you to organize your income and expenses',
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 45.0,
                        child: ElevatedButton.icon(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              AppColors.primary,
                            ),
                          ),
                          onPressed: null,
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          ),
                          label: Text(
                            "Try free Demo",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'Web, iOs and Android',
                        style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 20.0,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 530,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    illustration1,
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget mobileConatiner1() {
    return Container(
      child: Column(
        children: [
          Container(
            height: w! / 1.2,
            width: w! / 1.2,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  illustration1,
                ),
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Track your \nexpenses to \nsave money",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: w! / 10,
                      fontWeight: FontWeight.bold,
                      height: 1.0),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Helps you to organize \nyour income and expenses',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  height: 45.0,
                  child: ElevatedButton.icon(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        AppColors.primary,
                      ),
                    ),
                    onPressed: null,
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                    label: Text(
                      "Try free Demo",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Web, iOs and Android',
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
