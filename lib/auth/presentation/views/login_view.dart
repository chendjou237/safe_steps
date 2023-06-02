import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
@RoutePage()    
class LoginView extends StatelessWidget {
const LoginView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('login'),
      ),
      body: Container(),
    );
  }
}