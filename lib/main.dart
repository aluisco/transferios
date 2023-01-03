import 'package:flutter/material.dart';
import 'package:transferios/core/style/colors.dart';
import 'package:transferios/screens/dashboard/dashboard_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const TransferiOS());
}

class TransferiOS extends StatelessWidget {
  const TransferiOS({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: AppColor.primary,
      theme: ThemeData.light(
        useMaterial3: true,
      ).copyWith(appBarTheme: const AppBarTheme(color: AppColor.primary)),
      darkTheme: ThemeData.dark(useMaterial3: true)
          .copyWith(appBarTheme: const AppBarTheme(color: AppColor.primary)),
      themeMode: ThemeMode.system,
      home: const DashboardPage(),
    );
  }
}
