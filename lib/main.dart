import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
import 'package:myapp1/views/login_view.dart';
import 'package:myapp1/views/register_view.dart';

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
    ),
  );
}

// type stl or stf

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  bool checkLogin(){
    isLogin= true;
    return isLogin;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text( 'HomePage pedram'),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_box),
            tooltip: 'Register',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => RegisterView()));

            },
          ),
          IconButton(
            icon: const Icon(Icons.login_rounded),
            tooltip: 'Login',
            onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => LoginView()));
            },
          ),
        ],
      ),
      body: Column(
          children: <Widget>[
            if (checkLogin())
              const Text(
                'you are login ok',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              )
            else
              IconButton(
                icon: const Icon(Icons.login_rounded),
                tooltip: 'Login',
                onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => LoginView()));
            },
          ),
          condition(),
          ],
        ),
    );
  }


  final checked = true;

  Widget condition() {
    Widget widget=Container();
    switch (checked) {
      case true:
        widget = Text(
          'Second Widget',
          style: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
          ),
        );
        break;
      case false:
        widget = Container();
        break;
      default:
        widget = Container();
    }
    return widget;
  }

}
