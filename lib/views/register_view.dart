import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// import 'package:myapp1/views/login_view.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {

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
  const newText = 'Hello World';
  print(newText);
  _requestField.text =newText;
// final Uri _url = Uri.parse('https://softlock.ir');
// if (!await launchUrl(_url)) {
  //   print(_url);
  //   throw Exception('Could not launch $_url');
  // }else{
  // }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('registr page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration:const InputDecoration(hintText: 'username as Email'),
              controller: _requestField,
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
                print("=============C===============");  
              }
              catch (e) {
                print("error"+e.toString());
              }
            },
            child: const Text('register url'),
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
  }
}