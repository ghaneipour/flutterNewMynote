import 'package:flutter/material.dart';
import 'package:myapp1/views/error_login_view.dart';
// import 'package:http/http.dart' as http;
import 'package:myapp1/views/login_view.dart';
import 'package:myapp1/views/register_view.dart';
import 'package:myapp1/views/verify_email_view.dart';
import 'package:myapp1/views/verify_sms_view.dart';
import 'package:myapp1/views/home_page_view.dart';

bool isLogin = false;
void main() {

  runApp( MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: const LoginView(),
      home: const HomePage(),
      routes: {
        '/login/':(context) => const LoginView(),
        '/register/':(context) => const RegisterView(),
        '/sendSMS/':(context) => const VerifySmsViewState(),
        '/sendEmail/':(context) => const VerifyEmailViewState(),
        '/errorEmail/':(context) => const ErrorEmailViewState(),
        '/HomePage/':(context) => const HomePage(),
      },
    ),
  );
}

// type stl or stf
