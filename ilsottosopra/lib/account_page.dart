import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
           width: 200,
           height: 200,
        child: Column(children: [
          Container(
            child: Image.asset("lib/assets/fiori.jpg", width: 300,),
          )
        ],

        ),
        )
      ],
    ),
    );
  }
}