import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:google_pay/google_pay.dart';

class GoogleSignInScreen extends StatefulWidget {
  @override
  _GoogleSignInScreenState createState() => _GoogleSignInScreenState();
}

class _GoogleSignInScreenState extends State<GoogleSignInScreen> {
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<void> _handleSignIn() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;
      final String? accessToken = googleAuth.accessToken;
      final String? idToken = googleAuth.idToken;
    } catch (error) {
      print('Error: $error');
    }
  }

  // Future<void> _handlePayment() async {
  //   final GooglePayPaymentData paymentData = GooglePayPaymentData(
  //     totalPrice: '10.00',
  //     currencyCode: 'USD',
  //     countryCode: 'US',
  //     totalPriceStatus: GooglePayTotalPriceStatus.finalTotal,
  //     billingAddressRequired: true,
  //     billingAddressParameters: GooglePayAddressParameters(
  //       format: GooglePayAddressFormat.full,
  //       phoneNumberRequired: true,
  //     ),
  //     shippingAddressRequired: true,
  //     shippingAddressParameters: GooglePayAddressParameters(
  //       format: GooglePayAddressFormat.min,
  //       phoneNumberRequired: true,
  //     ),
  //   );
  //
  //   try {
  //     final isAvailable = await GooglePay.isAvailable();
  //     if (isAvailable) {
  //       final result = await GooglePay.makePayment(paymentData);
  //       // Process the payment result
  //     } else {
  //       // Google Pay is not available on this device
  //     }
  //   } catch (error) {
  //     print('Error: $error');
  //   }
  // }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Sign-In'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: _handleSignIn,
              child: Text('Sign In with Google'),
            ),
            // ElevatedButton(
            //   onPressed: _handlePayment,
            //   child: Text('Sign In with Google'),
            // ),
          ],
        ),
      ),
    );
  }
}
