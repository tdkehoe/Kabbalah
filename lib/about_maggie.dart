import 'package:flutter/material.dart';

class AboutMaggie extends StatelessWidget {
  const AboutMaggie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(8),
        physics: ClampingScrollPhysics(),
        children: <Widget>[
          Image.asset('assets/images/maggie.png'),
          // Image(
          //   image: AssetImage("assets/images/maggie.png"),
          //   fit: BoxFit.fitHeight,
          // ),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'About Maggie McPherson',
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
                        "Leslie Margaret Perrin McPherson wrote the Kabbalistic numerology interpretations used in this application. She was born on March 14, 1956, in Regina, Saskatchewan, Canada. She received her Ph.D. in psychology from McGill University in Montreal. Her dissertation was about how children acquire language. She was also a respected astrologer and her work in that field included compiling ancient Sumerian and Babylonian astrological sources, as a part of Project Hindsight. Maggie passed away October 24, 2003, in Vancouver, British Columbia.",
                    style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
        ]);
  }
}
