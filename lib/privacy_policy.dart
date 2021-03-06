import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(8),
        physics: ClampingScrollPhysics(),
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'Privacy Policy',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 5),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text:
                  "Protecting your private information is our priority. This Statement of Privacy applies to Kabbalah Numerology and its developer Thomas David Kehoe and governs data collection and usage. For the purposes of this Privacy Policy, unless otherwise noted, all references to Kabbalah Numerology include https://kabbalah-numerology.web.app/. By using Kabbalah Numerology, you consent to the data practices described in this statement.",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'Collection of Your Personal Information',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 5),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text:
                  "We do not collect any personal information about you unless you voluntarily provide it to us. However, you may be required to provide your email address when sending us an email message. We may use your information for, but not limited to, communicating with you. We also may gather additional personal or non-personal information in the future.",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
          SizedBox(height: 5),

          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'Sharing Information with Third Parties',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 5),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text:
                  "Kabbalah Numerology does not sell, rent, or lease your private information to third parties.",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text:
                  "Kabbalah Numerology may disclose your personal information, without notice, if required to do so by law or in the good faith belief that such action is necessary to: (a) conform to the edicts of the law or comply with legal process served on Kabbalah Numerology or the site; (b) protect and defend the property of Kabbalah Numerology; and/or (c) act under exigent circumstances to protect the personal safety of users of Kabbalah Numerology, or the public.",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),

          SizedBox(height: 5),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'Right to Deletion',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 5),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text:
                  """
Subject to certain exceptions set out below, on receipt of a verifiable request from you, we will:
  - Delete your personal information from our records, and
  - Direct any service providers to delete your personal information from their records.""",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text:
                  """
Please note that we may not be able to comply with requests to delete your personal information if it is necessary to:
  - Complete the transaction for which the personal information was collected, fulfill the terms of a written warranty or product recall conducted in accordance with federal law, provide a good or service requested by you, or reasonably anticipated within the context of our ongoing business relationship with you, or otherwise perform a contract between you and us;
  - Detect security incidents, protect against malicious, deceptive, fraudulent, or illegal activity; or prosecute those responsible for that activity;
  - Debug to identify and repair errors that impair existing intended functionality;
  - Exercise free speech, ensure the right of another consumer to exercise his or her right of free speech, or exercise another right provided for by law;
  - Comply with the California Electronic Communications Privacy Act;
  - Engage in public or peer-reviewed scientific, historical, or statistical research in the public interest that adheres to all other applicable ethics and privacy law, when our deletion of the information is likely to render impossible or seriously impair the achievement of such research, provided we have obtained your informed consent;
  - Enable solely internal uses that are reasonable aligned with your expectations based on your relationship with us;
  - Comply with an existing legal obligation; or
  - Otherwise use your personal information, internally, in a lawful manner that is compatible with the context in which you provided the information.""",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'Children Under Thirteen',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 5),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text:
                  "Kabbalah Numerology does not knowingly collect personally identifiable information from children under the age of thirteen. If you are under the age of thirteen, you must ask your parent or guardian for permission to use this application.",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),

          SizedBox(height: 5),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'Changes to this Statement',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 5),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text:
                  "Kabbalah Numerology reserves the right to change this Privacy Policy from time to time. We will notify you about significant changes in the way we treat personal information by sending a notice to the primary email address specified in your account, by placing a prominent notice on our application, and/or by updating any privacy information. Your continued use of the application and/or Services available after such modifications will constitute your (a) acknowledgement of the modified Privacy Policy; and (b) agreement to abide and be bound by that Policy.",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),

          SizedBox(height: 5),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'Contact Information',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 5),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text:
                  "Kabbalah Numerology welcomes your questions or comments regarding this Statement of Privacy. If you believe that Kabbalah Numerology has not adhered to this Statement, please contact Kabbalah Numerology at sales@casafuturatech.com.",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),

          SizedBox(height: 5),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text:
                  "Effective as of February 8, 2022.",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),

        ]);
  }
}