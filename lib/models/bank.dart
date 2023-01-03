import 'package:flutter/material.dart';
import 'package:transferios/core/src/assets.dart';
import 'package:transferios/core/style/colors.dart';
import 'package:transferios/screens/screens.dart';

enum BankTypes {
  metropolitano(
    name: 'Metropolitano',
    imageSrc: Assets.metro,
    page: MetropolitanoPage(),
    mainColor: AppColor.primaryMetro,
    secondaryColor: AppColor.secondaryMetro,
  ),
  bpa(
    name: 'Bpa',
    imageSrc: Assets.bpa,
    page: BpaPage(),
    mainColor: AppColor.primaryBpa,
    secondaryColor: AppColor.secondaryBpa,
  ),
  bandec(
    name: 'Bandec',
    imageSrc: Assets.bandec,
    page: BandecPage(),
    mainColor: AppColor.primaryBandec,
    secondaryColor: AppColor.secondaryBandec,
  );

  const BankTypes({
    required this.name,
    required this.imageSrc,
    required this.page,
    required this.mainColor,
    required this.secondaryColor,
  });
  final String name;
  final String imageSrc;
  final Color mainColor;
  final Color secondaryColor;
  final Widget page;
}
