import 'package:flutter/material.dart';
import 'package:safecircle/constants/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, //Get rid of back botton
        backgroundColor: kBlack,
        title: const Text('Home'),
        titleTextStyle: const TextStyle(color: kWhite, fontSize: 20),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // The Banner with User Icon
              Stack(
                children: [
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: Image.asset('assets/banner.jpg', 
                    fit: BoxFit.fitWidth,
                    ),
                  ),
                  // User Icon
                  Positioned(
                    bottom: 10, // to make the icon overlap the banner
                    left: (MediaQuery.of(context).size.width / 2) - 40, // to center the icon
                    child: const CircleAvatar(
                      backgroundColor: kWhite,
                      radius: 40,
                      backgroundImage: AssetImage('assets/icons/user.png'),
                      // Add a shadow for the user icon
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40), // increased size to give room for the icon
              const Text(
                'Safe Circle',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'Your safety is our priority',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 1.0,
                  padding: const EdgeInsets.all(4.0),
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                  children: <Widget>[
                    _buildCard(
                        'Emergency Contacts', 'assets/icons/contact.png', context),
                    _buildCard(
                        'Location Tracking', 'assets/icons/location.png', context),
                    _buildCard('Safety Alerts', 'assets/icons/alert.png', context),
                    _buildCard('Safety Tips', 'assets/icons/tips.png', context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard(String name, String asset, BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            asset,
            width: 64.0,
            height: 64.0,
          ),
          const SizedBox(height: 10.0),
          Text(
            name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
