import 'package:flutter/material.dart';
import 'package:safecircle/constants/constants.dart';

class AccessibilityPage extends StatelessWidget {
  const AccessibilityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         leading: Theme(
          data: Theme.of(context).copyWith(iconTheme: const IconThemeData(color: kWhite)),
          child: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Colors.black,
        title: const Text(
          'Accessibility',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20),
            Text(
              'ACCESSIBILITY STATEMENT FOR SAFECIRCLE',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Vision Labs is committed to making our Safety Tool app accessible to all users, including those with disabilities. We strive to ensure that our app meets the standards of accessibility and usability in accordance with the Web Content Accessibility Guidelines (WCAG) 2.1 Level AA.\n\nThe following are some of the features and improvements we have made to the app to enhance accessibility:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Color Contrast',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'We have ensured that the app\'s color contrast meets the requirements of the WCAG 2.1 Level AA. This makes it easier for users with low vision or color blindness to distinguish between elements of the app.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Navigation',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'We have designed the apps navigation in a way that is simple and easy to use. This makes it easier for users with mobility impairments to navigate through the app.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Keyboard Navigation',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'We have enabled keyboard navigation throughout the app. This allows users who are unable to use a mouse to navigate the app using their keyboard.',
              style: TextStyle(fontSize: 16),
            ),
             SizedBox(height: 20),
            Text(
              'User Testing',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'We regularly conduct user testing with users who have disabilities to gather feedback and make improvements to the app\'s accessibility.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'We are committed to continually improving the accessibility of our app. If you have any feedback or suggestions on how we can improve the app\'s accessibility, please contact us at contact@visionlabs.com.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'We believe that everyone should be able to use our app with ease and comfort, regardless of their ability. We will continue to make improvements to ensure that all users can access the features of the app.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
