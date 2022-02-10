import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class HighlightsMainWork extends StatelessWidget {
  const HighlightsMainWork({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HighlightsWork(
          value: 15,
          text: '+',
          label: 'Projects',
        ),
        HighlightsWork(
          value: 30,
          text: '+',
          label: 'GitHub Projects',
        ),
        HighlightsWork(
          value: 43,
          text: '+',
          label: 'Health Apps',
        ),
        HighlightsWork(
          value: 15,
          text: '+',
          label: 'Chat Apps',
        ),
      ],
    );
  }
}

class HighlightsWork extends StatelessWidget {
  const HighlightsWork(
      {@required this.value, @required this.text, @required this.label});
  final value;
  final text;
  final label;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TweenAnimationBuilder(
            tween: IntTween(begin: 0, end: value),
            duration: Duration(seconds: 5),
            builder: (context, value, child) => Text(
                  '$value$text',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: primaryColor),
                )),
        Text(label,
            style: TextStyle(
              color: Colors.white,
            ))
      ],
    );
  }
}
