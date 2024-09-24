import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:safecircle/store/paymentsuccess.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf9fafc),
      appBar: AppBar(
        
        backgroundColor: const Color(0xFF000000),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
         // This line disables the back button
      ),
          title: const Text('Payment', style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const Icon(Icons.payment, color: Color(0xFF303030), size: 80),
                const SizedBox(height: 40),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Card Number',
                    labelStyle: const TextStyle(color: Color(0xFF303030)),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(Icons.credit_card_outlined, color: Color(0xFF303030)),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your card number';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Expiration Date',
                    labelStyle: const TextStyle(color: Color(0xFF303030)),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(Icons.date_range_outlined, color: Color(0xFF303030)),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                  ),
                  keyboardType: TextInputType.datetime,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the card\'s expiration date';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'CVV',
                    labelStyle: const TextStyle(color: Color(0xFF303030)),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(Icons.vpn_key_outlined, color: Color(0xFF303030)),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                  ),
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the card\'s CVV';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF000000),
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius:                      BorderRadius.circular(10.0),
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Payment...')),
                      );
                      // Add your payment processing logic here
                      // Once payment is successful, navigate to the success screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const PaymentSuccessScreen()),
                      );
                    }
                  },
                  child: const Text('Pay', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

