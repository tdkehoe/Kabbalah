import 'package:flutter/material.dart';
import 'package:kabbalah/convert_name_to_number.dart';
import 'package:kabbalah/personalities.dart';
import 'package:kabbalah/fortunes.dart';

class FullNameField extends StatefulWidget {
  const FullNameField({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _FullNameState();
  }
}

class _FullNameState extends State<FullNameField> {
  // * Form Key
  // final _formKey = GlobalKey<FormState>();

  int reducedCompoundNumber = 0;
  int singleNumber = 0;
  String? fortune;
  String? personality;

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController middleNameController = TextEditingController();
  final TextEditingController thirdNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      // crossAxisAlignment: CrossAxisAlignment.center,
      shrinkWrap: true,
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Column(children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your first name',
                ),
                controller: firstNameController,
                onSaved: (value) {
                  firstNameController.text = value!;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your middle name',
                ),
                controller: middleNameController,
                onSaved: (value) {
                  middleNameController.text = value!;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your third name (optional)',
                ),
                controller: thirdNameController,
                onSaved: (value) {
                  thirdNameController.text = value!;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your last name',
                ),
                controller: lastNameController,
                onSaved: (value) {
                  lastNameController.text = value!;
                },
              ),
              Text(
                'Enter hyphenated names on one line',
                style: TextStyle(fontStyle: FontStyle.italic),
              )
            ])),
        if (reducedCompoundNumber == 0) ElevatedButton(
          style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20)),
          child: const Text('Get Fortune'),
          onPressed: () {
            setState(() {
              String firstName = firstNameController.text;
              int firstNameNumberResult = 0;
              firstNameNumberResult = convertNameToNumber(firstName);

              String middleName = middleNameController.text;
              int middleNameNumberResult = 0;
              middleNameNumberResult = convertNameToNumber(middleName);

              String thirdName = thirdNameController.text;
              int thirdNameNumberResult = 0;
              thirdNameNumberResult = convertNameToNumber(thirdName);

              String lastName = lastNameController.text;
              int lastNameNumberResult = 0;
              lastNameNumberResult = convertNameToNumber(lastName);

              int compoundNumber = firstNameNumberResult + middleNameNumberResult + thirdNameNumberResult + lastNameNumberResult;
              reducedCompoundNumber = reduceCompoundNumber(compoundNumber);
              print('Reduced Compound Number: ' + reducedCompoundNumber.toString());
              singleNumber = reduceSingleNumber(reducedCompoundNumber);

              fortune = fortuneSwitchCase(reducedCompoundNumber);
              print(fortune);

              personality = personalitySwitchCase(singleNumber);
              print(personality);
            }); // setState()
          }, // onPressed()
        ),
        if (reducedCompoundNumber != 0) ElevatedButton(
          style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20)),
          child: const Text('Clear Form'),
          onPressed: () {
            setState(() {
              firstNameController.text = "";
              middleNameController.text = "";
              thirdNameController.text = "";
              lastNameController.text = "";
              reducedCompoundNumber = 0;
              singleNumber = 0;
              fortune = null;
              personality = null;
            }); // setState()
          }, // onPressed()
        ),
        RichText(
          text: TextSpan(
            style: DefaultTextStyle.of(context).style,
            children: <TextSpan>[
              if (reducedCompoundNumber != 0) TextSpan(text: 'Fortune Associated with the Compound Number ' + reducedCompoundNumber.toString(), style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          textAlign: TextAlign.center,
        ),
        RichText(
          text: TextSpan(
            style: DefaultTextStyle.of(context).style,
            children: <TextSpan>[
              TextSpan(text: fortune),
            ],
          ),
        ),
        SizedBox(height: 8),
        RichText(
          text: TextSpan(
            style: DefaultTextStyle.of(context).style,
            children: <TextSpan>[
              if (singleNumber != 0) TextSpan(text: 'Personality Associated with the Single Number ' + singleNumber.toString(), style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          textAlign: TextAlign.center,
        ),
        RichText(
          text: TextSpan(
            style: DefaultTextStyle.of(context).style,
            children: <TextSpan>[
              TextSpan(text: personality),
            ],
          ),
        ),

      ],
    );
  }
}
