import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// import 'package:fluttertoast/fluttertoast.dart';


class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  
  int _counter = 0;
  late final TextEditingController _email;
  late final TextEditingController _password;
  late final TextEditingController _Authorization;
  late final TextEditingController _requestField;

  @override
  void initState(){
        _email = TextEditingController();
        _password = TextEditingController();
        _Authorization = TextEditingController();
        _requestField = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    _Authorization.dispose();
    _requestField.dispose();
    super.dispose();
  }


  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

Future<void> _launchUrl() async {
  _requestField.text ='pedram';
// final Uri _url = Uri.parse('https://softlock.ir');
// if (!await launchUrl(_url)) {
  //   print(_url);
  //   throw Exception('Could not launch $_url');
  // }else{
  // }
}
  
 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Login page...'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             TextField( 
              decoration:const InputDecoration(hintText: '....'),
              controller: _requestField, 
              enabled: false,
              // readOnly: true,
            ),          
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            TextField( 
            decoration:const InputDecoration(hintText: 'username as Email'),
            controller: _email, 
            enableSuggestions: false,
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
          ),
          TextField( 
            controller: _password,
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            decoration:const InputDecoration(hintText: 'password'),
          ),
          TextField( 
            controller: _Authorization, 
            decoration:const InputDecoration(hintText: 'Authorization'),
          ),
       
            TextButton(
            onPressed: _launchUrl,//() async{},
            child: const Text('Print url'),
            ),
            TextButton(
            onPressed:  () async{
              try{
              _requestField.text ='Wait for server...';
              final email = _email.text;
              final password = _password.text;
              final Authorization = _Authorization.text;
              final url2 = Uri.http('softlock.ir', 'register.php');
                print (url2);
                print("============A================");
                Map<String, String> body = {
                    'user':'\''+email+'\'',
                    'pass':'\''+password+'\'',
                    'Authorization':'\''+Authorization+'\'',
                    'name': 'doodle',
                    'color': 'blue',
                    'Content-Type': 'application/json', 
                    }; 
                final response = await http.post(
                  url2,
                  body: body, 
                );
                print("============B================");
                print('Response status: ${response.statusCode}');
                print(response.body);
                _requestField.text =response.body;
    //             Fluttertoast.showToast(
    //     msg: "This is a Toast message",
    //     toastLength: Toast.LENGTH_SHORT,
    //     gravity: ToastGravity.CENTER,
    //     timeInSecForIosWeb: 1,
    //     textColor: Colors.white,
    //     fontSize: 16.0
    // );
                print("=============C===============");  
              }
              catch(e) {
                _requestField.text =e.toString();
              }
            },
            child: const Text('Login...'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  
    return Container();
  }
  
  }




