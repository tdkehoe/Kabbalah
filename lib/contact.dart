import 'package:flutter/material.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart'; // dependency for mailto.dart package

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'Contact Us',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 5),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20)),
            child: const Text('sales@casafuturatech.com'),
            onPressed: () {
              launchMailto() async {
                final mailtoLink = Mailto(
                  to: ['sales@casafuturatech.com'],
                  subject: 'Contact from Kabbalistic Numerology',
                );
                // Convert the Mailto instance into a string.
                // Use either Dart's string interpolation
                // or the toString() method.
                await launch('$mailtoLink');
              }
            }, // onPressed()
          ),
        ]);
  }
}
