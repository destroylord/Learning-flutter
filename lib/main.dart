import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_app/screens/Home.dart';
import 'package:flutter_app/screens/FormValidation.dart';
import 'package:flutter_app/screens/FormBasic.dart';

void main() =>  runApp(const MyApp(

));

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const title = "Flutter Demo APP";
    return GetMaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      getPages: [
        GetPage(name: "/", page: () => Home()),
        GetPage(name: "/second", page: () => FormValidation()),
        GetPage(name: "/third", page: () => FormBasic()),
      ],
    );
  }
}
