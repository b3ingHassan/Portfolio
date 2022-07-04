import 'package:flutter/material.dart';
import 'package:hassanmomin/utils/colors.dart';
import 'package:hassanmomin/utils/constants.dart';
import 'package:hassanmomin/utils/styles.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileNavBar(),
      desktop: desktopNavBar(),
    );
  }

  Widget mobileNavBar() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      height: 70.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
          ),
          navLogo()
        ],
      ),
    );
  }

  Widget desktopNavBar() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 10.0,
      ),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navLogo(),
          Row(
            children: [
              navButton('Features'),
              navButton('About Us'),
              navButton('Prizing'),
              navButton('Feedback'),
            ],
          ),
          Container(
            height: 45,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Request a Demo',
                style: TextStyle(
                  color: AppColors.primary,
                ),
              ),
              style: borderdButtonStyle,
            ),
          )
        ],
      ),
    );
  }

  Widget navButton(String txt) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          txt,
          style: TextStyle(
            color: Color(
              0xff3A3A3A,
            ),
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }

  Widget navLogo() {
    return Container(
      width: 110,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(logo),
        ),
      ),
    );
  }
}
