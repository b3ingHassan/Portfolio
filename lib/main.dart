import 'package:flutter/material.dart';
import 'package:hassanmomin/pages/home.dart';
import 'package:hassanmomin/utils/colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xpense',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'HindSilguri',
        brightness: Brightness.light,
        primaryColor: AppColors.primary,
      ),
      home: Home(),
    );
  }
}
