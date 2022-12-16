import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

const String _hello = 'Hello';
String get getHelloText => _hello;

double H(BuildContext context) => context.safePercentHeight;
double W(BuildContext context) => context.safePercentWidth;

Widget smallVerticalSpacer(BuildContext context) => (H(context) * 5).heightBox;
Widget mediumVerticalSpacer(BuildContext context) =>
    (H(context) * 10).heightBox;
Widget largeVerticalSpacer(BuildContext context) => (H(context) * 15).heightBox;
