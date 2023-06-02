import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
@RoutePage()    
class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Container(),
    );
  }
}
