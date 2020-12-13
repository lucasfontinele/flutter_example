import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String title;
  final List<String> options;

  Question(this.title, this.options);

  final List<Widget> _options = [];

  @override
  Widget build(BuildContext context) {
    for (String option in options) {
      _options.add(
        Container(
          child: RaisedButton(
            child: Text(option),
            onPressed: () => {
              print('Pressionou $option')
            },
          ),
        )
      );
    }

    return Column(
      children: [
        Text(this.title),
        Container(
          child: Column(
            children: [
              ..._options,
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
          margin: const EdgeInsets.only(top: 25.0),
        )
      ],
    );
  }
}
