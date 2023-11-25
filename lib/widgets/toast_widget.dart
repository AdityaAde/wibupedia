import 'package:fluttertoast/fluttertoast.dart';

import '../component/theme/theme.dart';

class ToastWidget {
  static void showToast(String msg) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: AppColor.dark2,
      textColor: AppColor.ink06,
      fontSize: 16.0,
    );
  }
}
