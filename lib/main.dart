import 'package:amazon_clone/constants/global_variables.dart';
import 'package:amazon_clone/features/auth/screens/login_screen.dart';
import 'package:amazon_clone/route/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: GlobalVariables.backgroundColor,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'assets/images/amazon_in.png',
            width: 120,
            height: 40,
          ),
          centerTitle:
              true, /*  const Text(
            'Home',
            style: TextStyle(color: Colors.black),
          ) */
        ),
        body: Center(
          child: Builder(builder: (context) {
            return ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.routeName);
                },
                child: const Text('Go to login'));
          }),
        ),
      ),
    );
  }
}
