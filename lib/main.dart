import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:washslot/core/theme/app_text_styles.dart';
import 'package:washslot/features/auth/presentation/first_onboarding.dart';
import 'package:washslot/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: FirstOnboarding()
    );
  }
}
