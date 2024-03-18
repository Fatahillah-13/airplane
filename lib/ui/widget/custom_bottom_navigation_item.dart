// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'dart:ffi';

import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationItem extends StatelessWidget {
  final String imageURL;
  final bool isSelected;

  const CustomBottomNavigationItem({
    Key? key,
    required this.imageURL,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                imageURL,
              ),
            ),
          ),
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
            color: isSelected ? kPrimaryColor : kTransparentColor,
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ],
    );
  }
}
