import 'package:window_manager/window_manager.dart';

class MainWindowListener extends WindowListener {
  @override
  void onWindowEvent(String eventName) {
    print("window event: ${eventName}");
  }

  @override
  void onWindowMove() {
    super.onWindowMove();
    print("window move");
  }

  @override
  void onWindowClose() async {
    print("Main Window");
    await windowManager.setPreventClose(false);
    print("Closing");
    await windowManager.destroy();
  }
}
