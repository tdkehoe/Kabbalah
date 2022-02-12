import 'package:flutter/material.dart';

class AboutKabbalah extends StatelessWidget {
  const AboutKabbalah({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(8),
        physics: ClampingScrollPhysics(),
        children: <Widget>[
          Image.asset('assets/images/nachman.png'),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'Rabbi Moses ben Nachman, 1194-1270',
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'About Kabbalah',
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
                      "Hebrew, unlike many other languages, lacks a separate numerical alphabet. Each letter in Hebrew also represents a number. As early as the first century BCE Jewish scholars converted letters into numbers to find hidden meanings in the words of the Torah (the first five books of the Bible). This esoteric study reached its height in the medieval period.\n\nMore recently, the 26 letters of English have been assigned numbers, as follows: \n\nA = 1\nB = 2\nC = 3\nD = 4\nE = 5\nF = 8\nG = 3\nG = 3\nH = 5\nI = 1\nJ = 1\nK = 2\nL = 3\nM = 4\nN = 5\nO = 7\nP = 8\nQ = 1\nR = 2\nS = 3\nT = 4\nU = 6\nV = 6\nW = 6\nX = 5\nY = 1\nZ = 7\n\nFor each *word* in the name (two words joined by a hyphen are considered one word), add up the values of the letters. If the sum is 11 or 22, stop. If the sum is over 9 (but not 11 or 22), add the digits in the sum. If this second sum is still over 9, add the digits again (etcetera, until you reach a single-digit number, or 11 or 22). Next add together the sums for each word. If this number is over 73, add its digits to get a smaller number. The two-digit number you get from this summation is called the \"compound number\" and is related to the destiny and fortune.\n\nNext add the digits of this number (and repeat if necessary) until you arrive at a single-digit number, the \"single number\"; this relates mostly to personality. Not every name has a compound number (a fortune), but most do.\n\nHere is an example:\n\nLeslie\n353315\n20\2\n\nMargaret\n41231254\n22\n22\n\nPerrin\n852215\n23\n5\n\nMcPherson\n438552376\n42\6\n\n2+22+5+6 = 36 (compound number)\n\n3+5=8 (single number)\n\nKabbalistic numerology is different from the more popular Pythagorian numerology, which includes your birthdate.",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
        ]);
  }
}
