import 'package:flutter/material.dart';
import 'package:hassanmomin/utils/colors.dart';

ButtonStyle borderdButtonStyle = ButtonStyle(
  elevation: MaterialStateProperty.all(0.0),
  backgroundColor: MaterialStateProperty.all(
    Colors.white,
  ),
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
      side: BorderSide(
        color: AppColors.primary,
      ),
      borderRadius: BorderRadius.circular(
        10.0,
      ),
    ),
  ),
);
