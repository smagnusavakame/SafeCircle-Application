import 'package:flutter/material.dart';
import 'package:safecircle/constants/constants.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({Key? key}) : super(key: key);

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
        backgroundColor: const Color(0xFF000000),
        title: const Text('Privacy Policy', style: TextStyle(color: Colors.white)),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'PRIVACY POLICY FOR SAFECIRCLE',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF303030)),
              ),
              SizedBox(height: 20),
              Text(
                'This Privacy Policy ("Policy") describes how Vision Labs ("Company") collects, uses, and shares information about users of the Safety Tool app ("App"). By using the App, you consent to the collection, use, and sharing of your information as described in this Policy.',
                style: TextStyle(fontSize: 16, color: Color(0xFF303030)),
              ),
              SizedBox(height: 20),
              Text(
                'Information We Collect',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF303030)),
              ),
              Text(
                'When you use the App, we may collect the following types of information:\n\n'
                'Personal Information: We may collect personal information that you provide to us, such as your name, email address, phone number, and payment information.\n'
                'Location Information: We may collect your location information through the App\'s use of location services. We use this information to provide you with safety-related information and alerts based on your current location.\n'
                'Usage Information: We may collect information about how you use the App, such as the features you use and the frequency and duration of your use.\n'
                'User-Generated Content: We may collect content that you submit or upload to the App, such as safety tips or reviews.',
                style: TextStyle(fontSize: 16, color: Color(0xFF303030)),
              ),
              SizedBox(height: 20),
              Text(
                'How We Use Your Information',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF303030)),
              ),
              Text(
                'We may use the information we collect for the following purposes:\n\n'
                'To provide and improve the App\'s features and functionality.\n'
                'To personalize your experience with the App.\n'
                'To communicate with you about the App and respond to your inquiries and requests.\n'
                'To analyze and improve the effectiveness of the App.\n'
                'To comply with legal and regulatory requirements.',
                style: TextStyle(fontSize: 16, color: Color(0xFF303030)),
              ),
              SizedBox(height: 20),
              Text(
                'How We Share Your Information',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF303030)),
              ),
              Text(
                'We may share your information with the following types of third parties:\n\n'
                'Service Providers: We may share your information with third-party service providers who perform services on our behalf, such as payment processing and data analysis.\n'
                'Business Partners: We may share your information with our business partners who provide services or products related to  the App.\n'
                'Legal and Regulatory Authorities: We may disclose your information in response to legal process or a request from a governmental or regulatory authority.',
                style: TextStyle(fontSize: 16, color: Color(0xFF303030)),
              ),
              SizedBox(height: 20),
              Text(
                'Security',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF303030)),
              ),
              Text(
                'We take reasonable measures to protect your information from unauthorized access, use, or disclosure. However, no method of transmission over the Internet or method of electronic storage is completely secure.',
                style: TextStyle(fontSize: 16, color: Color(0xFF303030)),
              ),
              SizedBox(height: 20),
              Text(
                'Your Choices',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF303030)),
              ),
              Text(
                'You may choose to limit the information that we collect from you by adjusting the settings on your device or within the App. You may also choose to delete your account and all associated information by contacting us at contact@visionlabs.com.',
                style: TextStyle(fontSize: 16, color: Color(0xFF303030)),
              ),
              SizedBox(height: 20),
              Text(
                'Children\'s Privacy',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF303030)),
              ),
              Text(
                'The App is not intended for use by children under the age of 13, and we do not knowingly collect personal information from children under the age of 13.',
                style: TextStyle(fontSize: 16, color: Color(0xFF303030)),
              ),
              SizedBox(height: 20),
              Text(
                'Changes to this Policy',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF303030)),
              ),
              Text(
                'We may modify this Policy at any time by posting a revised version on the App. The revised version will be effective at the time we post it.',
                style: TextStyle(fontSize: 16, color: Color(0xFF303030)),
              ),
              SizedBox(height: 20),
              Text(
                'Contact Information',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF303030)),
              ),
              Text(
                'If you have any questions or concerns about this Policy, please contact us at contact@visionslab.com.\n\n'
                'By using the App, you consent to the collection, use, and sharing of your information as described in this Policy. If you do not agree to this Policy, do not use the App.',
                style: TextStyle(fontSize: 16, color: Color(0xFF303030)),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

