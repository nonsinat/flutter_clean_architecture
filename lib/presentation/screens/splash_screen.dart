import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_clean_archictecture_template/core/theme/text_styles.dart';
import 'package:flutter_clean_archictecture_template/presentation/screens/create_account_screen.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const CreateAccountScreen()));
    });

    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
            ),
            SizedBox(
              height: 10,
            ),
            Text("TARA DRIVER", style: AppTextStyles.heading),
          ],
        ),
      ),
    );
  }
}
