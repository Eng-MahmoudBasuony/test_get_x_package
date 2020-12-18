import 'package:get/get.dart';
import 'package:test_get_x_package/language/langs/ar.dart';
import 'package:test_get_x_package/language/langs/en.dart';

class Translation extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'en':en,
    'ar':ar
  };
}
