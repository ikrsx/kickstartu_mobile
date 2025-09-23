import 'package:flutter/material.dart';

class AccomodationLocationRow extends StatelessWidget {
  const AccomodationLocationRow({super.key, required this.value});

  final String value;

  @override
  Widget build(BuildContext context) {
    return ListTile(leading: Icon(Icons.map), title: Text(value));
  }
}

class OwnerContactRow extends StatelessWidget {
  const OwnerContactRow({super.key, required this.value});

  final String value;

  @override
  Widget build(BuildContext context) {
    return ListTile(leading: Icon(Icons.call), title: Text(value));
  }
}

class OwnerNameRow extends StatelessWidget {
  const OwnerNameRow({super.key, required this.value});

  final String value;

  @override
  Widget build(BuildContext context) {
    return ListTile(leading: Icon(Icons.person), title: Text(value));
  }
}
