import 'package:flutter/material.dart';

class BagCard extends StatelessWidget {
const BagCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            blurRadius: 6.0,
          ),
        ],
      ),
      child: ListTile(
        leading: const Icon(Icons.fastfood),
        title: const Text('Pizza'),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {},
      )
    );
  }
}
