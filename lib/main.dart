import 'package:flutter_clean_archictecture_template/core/theme/app_theme.dart';
import 'package:flutter_clean_archictecture_template/core/utils/app_config.dart';
import 'package:flutter_clean_archictecture_template/presentation/screens/coffee_screen.dart';
import 'package:flutter_clean_archictecture_template/injection_container.dart'
    as di;
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  di.init();
  runApp(const RootApp());
}

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConfig.titleApp,
      theme: AppTheme.lightTheme,
      home: const CoffeeScreen(),
    );
  }
}
