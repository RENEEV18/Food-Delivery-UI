import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery_ui/view/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Color.fromRGBO(237, 237, 237, 1.000),
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: Color.fromRGBO(237, 237, 237, 1.000),
      statusBarColor: Color.fromARGB(0, 250, 250, 250),
      statusBarBrightness: Brightness.dark,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(237, 237, 237, 1.000),
        appBarTheme: const AppBarTheme(
          color: Color.fromRGBO(237, 237, 237, 1.000),
        ),
        useMaterial3: true,
        fontFamily: "Montserrat",
      ),
      home: const SplashScreen(),
    );
  }
}
