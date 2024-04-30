import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiger_order/config.dart';
import 'package:tiger_order/pages/home_screen.dart';
import 'package:tiger_order/pages/splash_page.dart';
import 'package:tiger_order/services/state/group_state.dart';

void main() async {
  Get.put(GroupState(), permanent: true);
  // Get.put(FutureState(), permanent: true);
  // Get.put(FutureConfirmState(), permanent: true);
  // Get.put(FutureOrderBookState(), permanent: true);

  // 데스크탑 윈도우 크기 설정
  // if (Platform.isWindows) {
  //   WidgetsFlutterBinding.ensureInitialized();
  //   await DesktopWindow.setWindowSize(
  //       const Size(600, 1200)); // 가로 사이즈, 세로 사이즈 기본 사이즈 부여
  //   await DesktopWindow.setMinWindowSize(const Size(600, 1200)); // 최소 사이즈 부여
  //   await DesktopWindow.setMaxWindowSize(const Size(1024, 2048)); // 최대 사이즈 부여
  // }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'TigerOrder',
      theme: _buildTheme(),
      home: const SplashPage(),
      routes: {
        '/home': (context) => HomeScreen(),
      },
    );
  }

  ThemeData _buildTheme() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Config.seedColor,
      ),
      useMaterial3: true,
    );
  }
}
