import 'package:flutter/material.dart';
import 'package:safecircle/user/user.dart';

class MemberDetailsPage extends StatelessWidget {
  final Member member;

  const MemberDetailsPage({super.key, required this.member});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(member.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name: ${member.name}',
              style: const TextStyle(fontSize: 18.0),
            ),
            Text(
              'Phone Number: ${member.phoneNumber}',
              style: const TextStyle(fontSize: 18.0),
            ),
            Text(
              'Address: ${member.address}',
              style: const TextStyle(fontSize: 18.0),
            ),
            Text(
              'Type: ${member.type.toString().split('.').last}',
              style: const TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
