import 'package:flutter/material.dart';

class AccountButton extends StatelessWidget {
  const AccountButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(Icons.account_circle_outlined, fontWeight: FontWeight.bold),
      iconSize: 30,
    );
  }
}
