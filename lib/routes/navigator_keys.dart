import 'package:flutter/material.dart';

class NavigatorKeys {
  NavigatorKeys._();

  static GlobalKey<NavigatorState> mainKey = GlobalKey();
  static GlobalKey<NavigatorState> firstTabKey = GlobalKey();
  static GlobalKey<NavigatorState> secondTabKey = GlobalKey();
  static GlobalKey<NavigatorState> thirdTabKey = GlobalKey();
  static GlobalKey<NavigatorState> fourTabKey = GlobalKey();
  static GlobalKey<NavigatorState> fiveTabKey = GlobalKey();
  static GlobalKey<ScaffoldState> tabsScaffoldKey = GlobalKey();
}
