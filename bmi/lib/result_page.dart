import 'package:bmi/bottom_button.dart';
import 'package:bmi/reusable_card.dart';

import './constance.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({
    Key? key,@required this.bmiResult,@required this.resultText,this.interpretation
  }) : super(key: key);
  final String? bmiResult;
  final String? resultText;
  final String? interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Expanded(
              child: Center(
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kactiveCartColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:<Widget>[
                    Text(resultText.toString().toUpperCase(), style: kResultTextStyle),
                    Text(bmiResult.toString(), style: kBMITextStyle),
                    Text(
                      interpretation.toString(),
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: BottomButton(
                onTap: () {
                  Navigator.pop(context);
                },
                buttonTitle: 'Re-Calculate',
              ),
            ),
          ]),
    );
  }
}
