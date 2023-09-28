import 'package:flutter/material.dart';
import 'package:myapp1/main.dart';
import 'package:http/http.dart' as http;
// import 'package:flutter_sms/flutter_sms.dart';


class VerifyEmailViewState extends StatefulWidget {
  const VerifyEmailViewState({super.key});

  @override
  State<VerifyEmailViewState> createState() => _VerifyEmailViewStateState();
}

class _VerifyEmailViewStateState extends State<VerifyEmailViewState> {
  late final TextEditingController _email; 
  
  
  @override
  void initState(){
        _email = TextEditingController();
     super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
     super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return placeholder1();
  }


void sendRegistrationNotification(String email) async {
  try
  {
    final email = _email.text;
    const numbers = "12345";
    const emailType = 'verifySend';
    final url2 = Uri.http('softlock.ir', 'registeremail.php');
    print (url2);
    print("============A================"+email);
    Map<String, String> body = {
        'user':'\''+email+'\'',
        'type':'\''+emailType+'\'',
        'numbers':'\''+numbers+'\'',
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
}  


  Widget placeholder1(){

    Widget widget=Container();
    if(true){
      widget =  Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('email page'),
        ),

            //mainAxisAlignment: MainAxisAlignment.center,

        drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("AppMaking.co"),
              accountEmail: Text("sundar@appmaking.co"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://appmaking.co/wp-content/uploads/2021/08/appmaking-logo-colored.png"),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://appmaking.co/wp-content/uploads/2021/08/android-drawer-bg.jpeg",
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      "https://randomuser.me/api/portraits/women/74.jpg"),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      "https://randomuser.me/api/portraits/men/47.jpg"),
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("About"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.grid_3x3_outlined),
              title: Text("Products"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text("Contact"),
              onTap: () {},
            )
          ],
        ),
      ),

        body: Center(
                  
          child: Column(
          children:<Widget> [
              const Text('Email Page'),
              
              const Divider(
                height: 20,
                thickness: 5,
                indent: 20,
                endIndent: 0,
                color: Colors.black,
              ),
              
              const Text(
                'email verify ?',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
              
              const Divider(
              height: 20,
              thickness: 5,
              indent: 20,
              endIndent: 0,
              color: Colors.black,
            ),
              
              Container(
                padding: const EdgeInsets.all(20),
                child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: TextField(
                    controller: _email,
                    decoration: InputDecoration(
                      hintText: 'Enter email',
                      icon:const Icon(Icons.star),

                      suffixText: 'Email',
                      suffixIcon:const Icon(Icons.email_rounded),
                      // suffix: Container(width: 10, height: 10, color: Colors.blue,),

                      // prefixText: 'Hello',
                      prefixIcon:const Icon(Icons.accessibility_rounded),
                      prefix: Container(width: 10, height: 10, color: Color.fromARGB(255, 5, 135, 74),),
                      border: const OutlineInputBorder(), 
                      // onPressed:(){}
                      errorText: 'Error Text',
                    ),
                  ),
                ),
              ),

              const Divider(
                          height: 20,
                          thickness: 5,
                          indent: 20,
                          endIndent: 0,
                          color: Colors.black,
                        ),
              
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white10,
                  side: const BorderSide(
                    color: Colors.red,
                  ),
                ),
                onPressed: () {
                  // String message = "This is a test message!";
                  // List<String> recipents = ["09133274867", "09393274867"];
                  // _sendSMS(message, recipents);
                  
                   sendRegistrationNotification('ghaneipour@gmail.com');
                  },
                child:
                const  Text("send data",
                          style: TextStyle(
                              color: Colors.blue ,
                              fontSize: 38,
                              fontWeight: FontWeight.bold,
                          ),
                        ),
              ),
              
              const Divider(
                height: 20,
                thickness: 5,
                indent: 20,
                endIndent: 0,
                color: Colors.black,
              ),
              
              OutlinedButton(
                child: Text("Home page"),
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white10,
                  side: BorderSide( color: Colors.red, ),
                ),
                onPressed: () {
                  Navigator.of(context)
                    .pushNamedAndRemoveUntil(
                      '/HomePage/',(route)=>false,);
                },
              ),
              
              Container(
            padding: const EdgeInsets.all(20),
            child:const Align(
              alignment: AlignmentDirectional.centerStart,
              child: CardExample(),
            ),
          ),
              
              Expanded(
                child: ColoredBox(
                  color: Theme.of(context).colorScheme.primary,
                  child: const Center(
                    child: Text('Below'),
                    
                   ),
                ),
              ),
              
              const Image(
                image: NetworkImage('http://supportco.ir/wp-content/uploads/2023/06/final_small-768x576.jpg',
                  scale: 10,
                  ),
              ),

              // Image.asset(
              //     'img/britannia.jpg',
              //     width: 300,
              //     height: 150,
              //     fit:BoxFit.fill  
              //   ),

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



class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('The Enchanted Nightingale'),
              subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('BUY TICKETS'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: const Text('LISTEN'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}