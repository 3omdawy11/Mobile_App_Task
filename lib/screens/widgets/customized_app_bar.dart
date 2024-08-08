import 'package:flutter/material.dart';

import '../../constants.dart';

AppBar buildAppBar(String appBarTitle) {
  return AppBar(
    backgroundColor: Colors.transparent,
    title: Text(
      '$appBarTitle\' Details',
      style: appBarTextStyle,
    ),
  );
}
