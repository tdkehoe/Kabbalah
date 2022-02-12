import 'package:flutter/material.dart';
import 'package:pay/pay.dart';
// import 'package:flutter_stripe/flutter_stripe.dart';

// const _paymentItems = [
//   PaymentItem(
//     label: 'Total',
//     amount: '99.99',
//     // status: PaymentItemStatus.final_price,
//   )
// ];

// void onApplePayResult(paymentResult) {
//   // Send the resulting Apple Pay token to your server / PSP
// }

// void onGooglePayResult(paymentResult) {
//   // Send the resulting Google Pay token to your server / PSP
// }

class Donate extends StatelessWidget {
  const Donate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(8),
      children: [
        CardField(
          onCardChanged: (card) {
            print(card);
          },
        ),
        TextButton(
          onPressed: () async {
            // create payment method
            final paymentMethod =
            await Stripe.instance.createPaymentMethod(
                PaymentMethodParams.card());
          },
          child: Text('Donate'),
        )
      ],
    );


    // return Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: <Widget>[
    //
    //         ApplePayButton(
    //           paymentConfigurationAsset: 'apple_pay.json',
    //           paymentItems: _paymentItems,
    //           style: ApplePayButtonStyle.black,
    //           type: ApplePayButtonType.donate, // .donate?
    //           width: 300,
    //           height: 50,
    //           margin: const EdgeInsets.only(top: 15.0),
    //           onPaymentResult: onApplePayResult,
    //           loadingIndicator: const Center(
    //             child: CircularProgressIndicator(),
    //           ),
    //         ),
    //
    //         GooglePayButton(
    //           paymentConfigurationAsset: 'google_pay.json',
    //           paymentItems: _paymentItems,
    //           style: GooglePayButtonStyle.black,
    //           type: GooglePayButtonType.pay,
    //         width: 200,
    //         height: 50,
    //           margin: const EdgeInsets.only(top: 15.0),
    //           onPaymentResult: onGooglePayResult,
    //           loadingIndicator: const Center(
    //             child: CircularProgressIndicator(),
    //           ),
    //         ),
    //
    //       ],
    //     );
    }
  }
