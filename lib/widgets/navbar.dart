import 'package:flutter/material.dart';
import 'package:hassanmomin/utils/colors.dart';
import 'package:hassanmomin/utils/constants.dart';
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
          Text(
            "Hassan Momin",
            style: TextStyle(
              color: Color(0xff3994FF),
            ),
          ),
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
          Text(
            "Hassan Momin",
            style: TextStyle(
                fontSize: 24,
                color: Color(0xff3A3A3A),
                fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              navButton('Home'),
              navButton('Services'),
              navButton('Skills'),
              navButton('Portfolio'),
            ],
          ),
          Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: AppColors.primary,
            ),
            child: Center(
              child: Text(
                "Contact",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500),
              ),
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
              fontWeight: FontWeight.w500),
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
