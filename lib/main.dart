import 'package:flutter/material.dart';
import 'package:kabbalah/name_form_fields.dart';
import 'package:kabbalah/about_maggie.dart';
import 'package:kabbalah/about_kabbalah.dart';
import 'package:kabbalah/privacy_policy.dart';
// import 'package:kabbalah/donate.dart';
import 'package:kabbalah/contact.dart';
import 'package:kabbalah/appBar.dart';
import 'package:kabbalah/my-globals.dart' as globals;
// import 'package:flutter_stripe/flutter_stripe.dart';

// void main()  => runApp(const Kabbalah());

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // set the publishable key for Stripe - this is mandatory
  // this lines makes web app not work
  // Stripe.publishableKey = 'pk_live_51HUwTIEavVbYCPAtPEpePSURwE088KkLCHKLEaOcsLf2tMSg4bUE8LVVqVsPqD4P7MYUTXpkarJDfQqMFd5ipzmA00tNefshwx';
  runApp(Kabbalah());
}

// build the app
class Kabbalah extends StatelessWidget {
  const Kabbalah({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: globals.title,
        theme: ThemeData(
          colorScheme: ColorScheme(
            brightness: Brightness.light,
            primary: Color(0xFF0038b8),
            onPrimary: Colors.white,
            // Colors that are not relevant to AppBar in LIGHT mode:
            primaryVariant: Colors.grey,
            secondary: Colors.grey,
            secondaryVariant: Colors.grey,
            onSecondary: Colors.grey,
            background: Colors.grey,
            onBackground: Colors.grey,
            surface: Colors.grey,
            onSurface: Colors.grey,
            error: Colors.grey,
            onError: Colors.grey,
          ),
          // Define the default font family.
          fontFamily: 'Roboto',
          // colorScheme: ColorScheme.fromSwatch(
          //   primarySwatch: Colors.blue,
          // ),
          textTheme: const TextTheme(
            // headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            headline1: TextStyle(),
            headline2: TextStyle(),
            headline3: TextStyle(),
            headline4: TextStyle(),
            headline5: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold), // headers
            headline6: TextStyle(fontSize: 22.0, fontWeight: FontWeight.normal), // drawer menu items
            subtitle1: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold), // privacy policy
            subtitle2: TextStyle(),
            bodyText1: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal), // text
            bodyText2: TextStyle(),
            button: TextStyle(), // no styling on buttons
            caption: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal), // no styling on buttons
            overline: TextStyle(), // no styling on buttons
          ),
        ),
        home: HomePage());
  }
}

// home page route
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      drawer: Drawer(
          child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        physics: ClampingScrollPhysics(),
        children: [
          // const DrawerHeader(
          //   decoration: BoxDecoration(
          //     color: Colors.blue,
          //   ),
          //   child: Text(
          //     'Menu',
          //     style: TextStyle(fontSize: 24),
          //   ),
          // ),
          const SizedBox(
            width: null, // unconstrained width
            height: 25.0,
          ),
          ListTile(
            title: Text(
              'Home/Enter Name',
              style: Theme.of(context).textTheme.headline6,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'About Maggie',
              style: Theme.of(context).textTheme.headline6,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AboutMaggieRoute()),
              );
            },
          ),
          ListTile(
            title: Text(
              'About Kabbalah',
              style: Theme.of(context).textTheme.headline6,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AboutKabbalahRoute()),
              );
            },
          ),
          // ListTile(
          //   title: Text(
          //     'Donate',
          //     style: Theme.of(context).textTheme.headline6,
          //   ),
          //   onTap: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => const DonateRoute()),
          //     );
          //   },
          // ),
          ListTile(
            title: Text(
              'Contact Us',
              style: Theme.of(context).textTheme.headline6,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ContactRoute()),
              );
            },
          ),
          ListTile(
            title: Text(
              'Privacy Policy',
              style: Theme.of(context).textTheme.headline6,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PrivacyRoute()),
              );
            },
          ),
        ],
      )),
      body: ListView(padding: const EdgeInsets.all(8), children: <Widget>[
        FullNameField(),
      ]),
    );
  }
}

// About Maggie route
class AboutMaggieRoute extends StatelessWidget {
  const AboutMaggieRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: ListView(padding: const EdgeInsets.all(8), children: <Widget>[
        AboutMaggie(),
      ]),
    );
  }
}

// About Kabbalah route
class AboutKabbalahRoute extends StatelessWidget {
  const AboutKabbalahRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: ListView(padding: const EdgeInsets.all(8), children: <Widget>[
        AboutKabbalah(),
      ]),
    );
  }
}

// Donate route
// class DonateRoute extends StatelessWidget {
//   const DonateRoute({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: appBar,
//       body: ListView(padding: const EdgeInsets.all(8), children: <Widget>[
//         Donate(),
//       ]),
//     );
//   }
// }

// Contact Us route
class ContactRoute extends StatelessWidget {
  const ContactRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: ListView(padding: const EdgeInsets.all(8), children: <Widget>[
        ContactUs(),
      ]),
    );
  }
}

// Privacy Policy route
class PrivacyRoute extends StatelessWidget {
  const PrivacyRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: ListView(padding: const EdgeInsets.all(8), children: <Widget>[
        PrivacyPolicy(),
      ]),
    );
  }
}
