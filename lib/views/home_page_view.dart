import 'package:flutter/material.dart';
import 'package:myapp1/main.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text( 'HomePage pedram'),
        actions: [
          if(isLogin==true )
            IconButton(
              icon: const Icon(Icons.logout_rounded ),
              tooltip: 'Log out',
              onPressed: () {
                isLogin=false;
              },
            )
          else
            IconButton(
              icon: const Icon(Icons.login_rounded),
              tooltip: 'Login',
              onPressed: () { 
                //Navigator.of(context).push(
                //  MaterialPageRoute(builder: (context) => LoginView()));
                Navigator.of(context)
                    .pushNamedAndRemoveUntil(
                      '/login/',(route)=>false,);
            },
          ),

          IconButton(
            icon: const Icon(Icons.account_box),
            tooltip: 'Register',
            onPressed: () {  
              //Navigator.of(context).push(
              //  MaterialPageRoute(builder: (context) => RegisterView()));           
              Navigator.of(context)
                    .pushNamedAndRemoveUntil(
                      '/register/',(route)=>false,);
            },
          ),

          IconButton(
            icon: const Icon(Icons.sms_rounded),
            tooltip: 'SMS',
            onPressed: () {  
              //Navigator.of(context).push(
                //MaterialPageRoute(builder: (context) => VerifySmsViewState()));           
                Navigator.of(context)
                    .pushNamedAndRemoveUntil(
                      '/sendSMS/',(route)=>false,);
            },
          ),

          IconButton(
            icon: const Icon(Icons.email_outlined),
            tooltip: 'email',
            onPressed: () {  
                Navigator.of(context)
                    .pushNamedAndRemoveUntil(
                      '/sendEmail/',(route)=>false,);
                      //Navigator.of(context).push(
                      //MaterialPageRoute(builder: (context) => VerifyEmailViewState()));           
            },
          ),
        ],
      ),
      body:   condition(context),
    );
  }

 
  Widget condition(BuildContext context) {
    Widget widget=Container();
    switch (isLogin) {
      case true:
widget = IconButton(
  icon: const Icon(Icons.logout_rounded),
  tooltip: 'Log out',
  onPressed: () {
      isLogin=false;
    },
  );


        const Text(
          'Second Widget',
          style: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
          ),
        );
        break;
      case false:
                widget =
                  IconButton(
                icon: const Icon(Icons.login_rounded),
                tooltip: 'Login',
                onPressed: () {
                    isLogin=false;
                    //Navigator.of(context).push(
                      //MaterialPageRoute(builder: (context) => LoginView()));
                    Navigator.of(context)
                    .pushNamedAndRemoveUntil(
                      '/login/',(route)=>false,);
                  },
                );
                Text(
                  'you must login..' ,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                );
        break;
      default:
        widget = Container();
    }
    return widget;
  }

}

