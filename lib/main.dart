import 'package:amazon_clone/constants/global_variables.dart';
import 'package:amazon_clone/features/auth/screens/auth_screen.dart';
import 'package:amazon_clone/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Amazon Clone',
      theme: ThemeData(
      scaffoldBackgroundColor: GlobalVariables.backgroundColor,
      colorScheme: const ColorScheme.light(primary: GlobalVariables.secondaryColor),
      appBarTheme:  const AppBarTheme(
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black
        )
      )
      ),
      onGenerateRoute:(Settings)=>generateRoute(Settings) ,
      home: const AuthScreen()
    ); 
  }
}
