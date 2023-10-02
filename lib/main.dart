import 'package:flutter/material.dart';
import 'package:ros_zhunusov_madi/examples/ExampleArgumentRoutes.dart';
import 'package:ros_zhunusov_madi/examples/ExampleColumnRow.dart';
import 'package:ros_zhunusov_madi/examples/ExampleContainerBoxDecoration.dart';
import 'package:ros_zhunusov_madi/examples/ExampleFonts.dart';
import 'package:ros_zhunusov_madi/examples/ExampleGridViewPage.dart';
import 'package:ros_zhunusov_madi/examples/ExampleImage.dart';
import 'package:ros_zhunusov_madi/examples/ExampleListViewPage.dart';
import 'package:ros_zhunusov_madi/examples/ExampleRoutes.dart';
import 'package:ros_zhunusov_madi/examples/ExampleStackPositionedIndexedStack.dart';
import 'package:ros_zhunusov_madi/examples/ExampleStatefulWidget.dart';
import 'package:ros_zhunusov_madi/examples/ExampleStatlessWidget.dart';
import 'package:ros_zhunusov_madi/examples/ExampleThemeStyle.dart';
import 'package:ros_zhunusov_madi/examples/ExmaplePageView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Container(
        color: Colors.white,
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            const ExampleStatlessWidget(),
            const ExampleStatefulWidget(),
            const ExampleContainerBoxDecoration(),
            ExampleColumnRow(),
            const LinkToExampleListViewPage(),
            const LinkToExampleGridViewPage(),
            const LinkToExamplePageView(),
            const ExampleStackPositionedIndexedStack(),
            ExampleFonts(),
            const ExampleImage(),
            const ExampleTheme(),
            const ExampleRoutes(),
            const ExampleArgumentRoutes(),
          ],
        ),
      ),
    );
  }
}