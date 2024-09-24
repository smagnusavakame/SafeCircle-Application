import 'package:flutter/material.dart';
import 'package:safecircle/constants/constants.dart';
import 'package:safecircle/settings/accessibility.dart';
import 'package:safecircle/settings/changeuser.dart';
import 'package:safecircle/settings/privacypolicy.dart';
import 'package:safecircle/settings/useragreement.dart';
import 'ChangeSecuritySettings.dart';
import 'HelpCenter.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        automaticallyImplyLeading: false,//Get rid of back botton
        backgroundColor: kBlack,
        title: const Text('Settings'),
        titleTextStyle: const TextStyle(color: kWhite, fontSize: 20),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 10),
            buildSettingCard(context, 'Change User', const ChangeUserPage()),
            buildSettingCard(context, 'Change Security Settings', const ChangeSecuritySettingsPage()),
            buildSettingCard(context, 'Help Center', const HelpCenterPage()),
            buildSettingCard(context, 'Privacy Policy', const PrivacyPolicyPage()),
            buildSettingCard(context, 'Accessibility', const AccessibilityPage()),
            buildSettingCard(context, 'User Agreement', const UserAgreementPage()),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Widget buildSettingCard(BuildContext context, String title, Widget destination) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: kAsh,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(title, style: const TextStyle(fontSize: 18, color: kBlack)),
        trailing: const Icon(Icons.keyboard_arrow_right, color: kBlack,),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination),
          );
        },
      ),
    );
  }
}
