

import 'package:flutter/material.dart';

class ErrorEmailViewState extends StatefulWidget {
  const ErrorEmailViewState({super.key});

  @override
  State<ErrorEmailViewState> createState() => _ErrorEmailViewStateState();
}

class _ErrorEmailViewStateState extends State<ErrorEmailViewState> {
  @override
  Widget build(BuildContext context) {
    return placeholder1();
  }

  Widget placeholder1(){

    Widget widget=Container();
    if(true){
      widget =  Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.error,
          title: const Text('email error'),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'email verify fail',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      );

    }
    return widget;
  }
}
