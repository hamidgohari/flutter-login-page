import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MyAppThemeConfig().getTheme(),
      home: MyHomePage(),
    );
  }
}

class MyAppThemeConfig {
  final Color primaryTextColor = Colors.white;

  ThemeData getTheme() {
    return ThemeData(
      colorScheme: .fromSeed(seedColor: Colors.deepPurple),

      scaffoldBackgroundColor: Color.fromRGBO(2, 109, 142, 1),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: TextStyle(fontSize: 12, color: Colors.grey.shade900),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: primaryTextColor,
        contentPadding: EdgeInsets.fromLTRB(50, 0, 20, 0),
      ),
      dividerTheme: DividerThemeData(color: Colors.black),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(
            Color.fromRGBO(4, 210, 255, 1),
          ),
          foregroundColor: WidgetStatePropertyAll(primaryTextColor),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          ),
        ),
      ),

      textTheme: GoogleFonts.interTextTheme(
        TextTheme(
          bodyMedium: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
            color: primaryTextColor,
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
            child: Column(
              children: [
                Image.asset("images/login_icon.png", width: 300, height: 300),
                Text("Login", style: Theme.of(context).textTheme.bodyMedium),
                SizedBox(height: 32),
                TextField(
                  decoration: InputDecoration(
                    hintText: "example@email.com",
                    contentPadding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    prefixIcon: Container(
                      padding: EdgeInsets.all(0),
                      margin: EdgeInsets.all(0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Color.fromRGBO(197, 197, 197, 1),
                      ),
                      child: Icon(
                        CupertinoIcons.mail,
                        color: Color.fromRGBO(2, 109, 142, 1),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 32),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "*****************",
                    prefixIcon: Container(
                      padding: EdgeInsets.all(0),
                      margin: EdgeInsets.all(0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Color.fromRGBO(197, 197, 197, 1),
                      ),
                      child: Icon(
                        CupertinoIcons.lock,
                        color: Color.fromRGBO(2, 109, 142, 1),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 32),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: .43),
                        blurRadius: 9,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Log in",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 3),
                        Icon(CupertinoIcons.arrow_right_to_line, size: 24),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 32),
                Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontSize: 16,
                    decoration: TextDecoration.underline,
                    color: Color.fromRGBO(2, 1, 1, 0.5),
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 32),
                Row(
                  children: [
                    Expanded(child: Divider(endIndent: 10)),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                      child: Text(
                        "or",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                    Expanded(child: Divider(indent: 10)),
                  ],
                ),
                SizedBox(height: 32),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: .43),
                        blurRadius: 9,
                        offset: Offset(0, 4),
                      )
                    ]
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.transparent),
                      side: WidgetStatePropertyAll(
                        BorderSide(
                          color: Color.fromRGBO(4, 210, 255, 1),
                          width: 2,
                          strokeAlign: 2,
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 3),
                        Icon(CupertinoIcons.arrow_right_to_line, size: 24),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
