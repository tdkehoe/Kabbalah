import 'package:flutter/material.dart';
import 'package:kabbalah/name_form_fields.dart';

void main() => runApp(const Kabbalah());

class Kabbalah extends StatelessWidget {
  const Kabbalah({Key? key}) : super(key: key);

  static const String _title = 'Kabbalistic Numerology';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      // home: new HomePage();
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
        ),
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text(_title),
          ),
          drawer: Drawer(
              child: ListView(
                // Important: Remove any padding from the ListView.
                padding: EdgeInsets.zero,
                children: [
                  const DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Text('Menu'),
                  ),
                  ListTile(
                    title: const Text('Home'),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('About'),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                      // Then close the drawer
                      Navigator.push(
                          context,
                        MaterialPageRoute(builder: (context) => const AboutRoute()),
                      );
                    },
                  ),
                  // ListTile(
                  //   title: const Text('Donate'),
                  //   onTap: () {
                  //     // Update the state of the app.
                  //     // ...
                  //     // Then close the drawer
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(builder: (context) => const DonateRoute()),
                  //     );
                  //   },
                  // ),
                ],
              )
          ),
          body: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                FullNameField(),
              ])),
    );
  }
}

class AboutRoute extends StatelessWidget {
  const AboutRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}