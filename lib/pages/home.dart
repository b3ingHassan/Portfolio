import 'package:flutter/material.dart';
import 'package:hassanmomin/pages/containers/container1.dart';
import 'package:hassanmomin/pages/containers/container2.dart';
import 'package:hassanmomin/utils/constants.dart';
import 'package:hassanmomin/widgets/navbar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                NavBar(),
                Container1(),
                Container2(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
