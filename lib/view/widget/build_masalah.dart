import 'package:flutter/material.dart';
import 'package:rcgp_checker/view/widget/permasalahan_content.dart';

Widget buildMasalah(String? type) {
  switch (type) {
    case "1":
      return const PermasalahanContentV1();
    case "2":
      return const PermasalahanContentV2();
    case "3":
      return const PermasalahanContentV3();
    default:
      return const PermasalahanContentV1();
  }
}
