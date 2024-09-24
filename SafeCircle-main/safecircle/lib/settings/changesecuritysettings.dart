import 'package:flutter/material.dart';

class ChangeSecuritySettingsPage extends StatefulWidget {
  const ChangeSecuritySettingsPage({super.key});

  @override
  _ChangeSecuritySettingsPageState createState() => _ChangeSecuritySettingsPageState();
}

class _ChangeSecuritySettingsPageState extends State<ChangeSecuritySettingsPage> {
  bool _isTwoFactorEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Change Security Settings'),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 40),
        child: Column(
          children: <Widget>[
            buildTextField('New Password', true, Icons.lock),
            const SizedBox(height: 30),
            buildTextField('Confirm New Password', true, Icons.lock),
            const SizedBox(height: 30),
            ListTile(
              leading: const Icon(Icons.security, color: Colors.black),
              title: const Text('Enable Two-Factor Authentication'),
              trailing: Switch(
                value: _isTwoFactorEnabled,
                onChanged: (bool value) {
                  setState(() {
                    _isTwoFactorEnabled = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text('Submit', style: TextStyle(color: Colors.white)),
              onPressed: () {
                // Handle submit
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String label, bool isPassword, IconData icon) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        labelText: label,
        prefixIcon: Icon(icon, color: Colors.black),
      ),
    );
  }
}
