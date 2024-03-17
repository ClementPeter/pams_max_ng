import 'package:pams_max_ng/ui/utilities/string_utils.dart';

class Validation {
  static String? validateEmail(String? s) {
    if (StringUtil.isEmpty(s)) {
      return 'Email cannot be empty';
    } else if (!StringUtil.isValidEmail(s!)) {
      return 'Email must be a valid mail';
    } else {
      return null;
    }
  }

  static String? validateField(String? s, {String? errorMessage}) {
    if (StringUtil.isEmpty(s)) {
      return errorMessage ?? 'required';
    } else {
      return null;
    }
  }
}
