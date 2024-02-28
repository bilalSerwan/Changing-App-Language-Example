import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_project/locale/locale.dart';
import 'package:get_x_project/locale/localecontroller.dart';
import 'package:get_x_project/screens/home.dart';

import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences sharedpreference;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await ensureInitialized();
  sharedpreference = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    localcontroller lc = Get.put(localcontroller());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/Home',
      locale: lc.locale,
      translations: getLocale(),
      getPages: [
        GetPage(
          name: '/Home',
          page: () => const HomePage(),
        ),
      ],
    );
  }
}
