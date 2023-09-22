import 'package:flutter/material.dart';
import 'package:myapp1/main.dart';
// import 'package:flutter_sms/flutter_sms.dart';


class VerifyEmailViewState extends StatefulWidget {
  const VerifyEmailViewState({super.key});

  @override
  State<VerifyEmailViewState> createState() => _VerifyEmailViewStateState();
}

class _VerifyEmailViewStateState extends State<VerifyEmailViewState> {
  @override
  Widget build(BuildContext context) {
    return placeholder1();
  }

  Widget placeholder1(){

    Widget widget=Container();
    if(true){
      widget =  Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('email page'),
        ),
        body: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'email verify ok',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {
                  // String message = "This is a test message!";
                  // List<String> recipents = ["09133274867", "09393274867"];

                  // _sendSMS(message, recipents);
                    isLogin = false;
                },
                child:
                const  Text("data",
                    style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.black12,
                  ),
                ),
              ),
            ],
          ),
        ),
      );

    }
    return widget;
  }


//   void _sendSMS(String message, List<String> recipents) async {
//      String _result = await sendSMS(message: message, recipients: recipents)
//         .catchError((onError) {
//       print(onError);
//     });
//     print(_result);
// }

}
