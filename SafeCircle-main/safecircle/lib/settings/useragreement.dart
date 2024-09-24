import 'package:flutter/material.dart';
import 'package:safecircle/constants/constants.dart';

class UserAgreementPage extends StatelessWidget {
  const UserAgreementPage({Key? key}) : super(key: key);

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
          'End User Agreement',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        automaticallyImplyLeading: false,
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20),
            Text(
              'END USER AGREEMENT FOR SAFECIRCLE',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'This End User Agreement ("Agreement") is a legal agreement between you and Vision Labs ("Company") governing your use of the Safe Circle App ("App"). By using the App, you agree to be bound by the terms and conditions of this Agreement.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'License Grant',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Subject to your compliance with the terms and conditions of this Agreement, Company grants you a limited, non-exclusive, non-transferable, revocable license to use the App solely for your personal, non-commercial purposes.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Location Services',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'The App uses location services to provide you with safety-related information and alerts based on your current location. By using the App, you consent to the collection, use, and sharing of your location information by the App.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Safety Tools',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'The App provides access to various safety tools, such as panic buttons and emergency contact lists. You acknowledge and agree that the use of these tools is solely at your own risk, and that Company is not responsible for any injury or harm that may result from their use.',
              style: TextStyle(fontSize: 16),
            ),
             SizedBox(height: 20),
            Text(
              'User Content',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'The App may allow you to submit or upload user-generated content, such as safety tips or reviews. You represent and warrant that you have the necessary rights to submit such content, and that your content does not violate any third-party rights or applicable laws.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Payment Fees',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'The App may offer safety tools for purchase. You agree to pay all fees and charges associated with such purchases, and to provide accurate billing and payment information.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Termination',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Company may terminate this Agreement at any time if you breach any of its terms and conditions. Upon termination, you must immediately cease all use of the App and delete all copies of the App from your device.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Disclaimer of Warranties',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'THE APP IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, AND NON-INFRINGEMENT. COMPANY DOES NOT WARRANT THAT THE APP WILL MEET YOUR REQUIREMENTS OR THAT THE OPERATION OF THE APP WILL BE UNINTERRUPTED OR ERROR-FREE.',
              style: TextStyle(fontSize: 16),
            ),SizedBox(height: 20),
            Text(
              'Limitation of Liability',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'IN NO EVENT SHALL COMPANY BE LIABLE FOR ANY SPECIAL, INCIDENTAL, INDIRECT, OR CONSEQUENTIAL DAMAGES WHATSOEVER (INCLUDING, WITHOUT LIMITATION, DAMAGES FOR LOSS OF PROFITS, BUSINESS INTERRUPTION, LOSS OF INFORMATION, OR ANY OTHER PECUNIARY LOSS) ARISING OUT OF THE USE OF OR INABILITY TO USE THE APP, EVEN IF COMPANY HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Governing Law',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'This Agreement shall be governed by and construed in accordance with the laws of the jurisdiction in which Company is incorporated, without giving effect to any principles of conflicts of law.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Entire Agreement',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'This Agreement constitutes the entire agreement between you and Company with respect to the use of the App, and supersedes all prior or contemporaneous communications and proposals, whether oral or written, between you and Company.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Contact Information',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'If you have any questions or comments about this Agreement, please contact Company at contact@visionlabs.com.\n\nBy using the App, you agree to the terms and conditions of this Agreement. If you do not agree to these terms and conditions, do not use the App.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
