import 'package:portfolio_flutter/injection_container.dart' as di;
// import 'package:get_storage/get_storage.dart';

class Bootstrap {
  static Future<void> init() async {
    // await GetStorage.init();
    await di.init();
  }
}
