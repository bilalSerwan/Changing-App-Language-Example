import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_project/locale/localecontroller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    localcontroller lc = localcontroller();
    return Scaffold(
      appBar: AppBar(
        title: Text('home'.tr),
        centerTitle: true,
      ),
      backgroundColor: Colors.white70,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Change language'.tr),
            ElevatedButton(
              onPressed: () {
                lc.changelang("ar");
              },
              child: Text('button1'.tr),
            ),
            ElevatedButton(
              onPressed: () {
                lc.changelang('en');
              },
              child: Text('button2'.tr),
            ),
          ],
        ),
      ),
    );
  }
}
