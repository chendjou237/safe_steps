import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:safe_steps/app/utils/extensions/screen.dart';
import 'package:safe_steps/app/utils/extensions/size.dart';
import 'package:safe_steps/auth/presentation/views/widgets/bag_card.dart';

final List<String> products = ['Pizza', 'Burgers', 'Tacos', 'Sushi', 'Pasta'];

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: Container(
        width: context.screenWidth,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Text(
              'Welcome to Safe Steps',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            20.hGap,
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => 20.hGap,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      
                    },
                    child: const BagCard());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
