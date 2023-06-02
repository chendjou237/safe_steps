import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
@RoutePage()    
class SignUp extends StatelessWidget {
const SignUp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Container(),
    );
  }
}