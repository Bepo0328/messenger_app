import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:messenger_app/page/page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Messenger App',
      home: SignInPage(),
    );
  }
}
