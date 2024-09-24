import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';


class HelpCenterPage extends StatelessWidget {
  const HelpCenterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Help Center'),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.chat_bubble, color: Colors.white),
            onPressed: () {
              // Handle chat action
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
        child: ListView.separated(
          itemCount: 8,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(FeatherIcons.helpCircle, color: Colors.black),
              title: const Text('How do I add a new user?', style: TextStyle(fontSize: 16)),
              trailing: const Icon(FeatherIcons.chevronRight, color: Colors.black),
              onTap: () {
                // Handle tap
              },
            );
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(color: Colors.grey),
        ),
      ),
    );
  }
}
