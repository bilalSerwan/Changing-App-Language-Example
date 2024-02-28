import 'package:get/get.dart';

class getLocale implements Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        "ar": {
          "home": "پەرەی سەرەتا",
          "button1": "کوردی",
          "button2": "ئینگلیزی",
          'Change language': 'گۆرینی زمان بۆ',
        },
        "en": {
          "home": "Home Page",
          "button1": "Kurdish",
          "button2": "English",
          'Change language': 'Change Language To'
        },
      };
}
