import 'package:flutter/material.dart';
import 'package:flutter_app/screens/FormBasic.dart';
import 'package:flutter_app/screens/FormValidation.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  // const Home({Key? key}) : super(key: key);

 goToNext() {
    Get.to(FormValidation());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Get Package Home"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(children: [
            RaisedButton(onPressed: () => goToNext(),
            child: Text("Go To Form Validation")),
            const SizedBox(
              height: 20
            ),
            RaisedButton(
              child: Text("Go to Form Basic"),
              onPressed: () => Get.toNamed("/third")
            )
          ]),
        ),
      );
  }
}