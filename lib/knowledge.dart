import 'package:flutter/material.dart';

import 'constants.dart';

class KnowledgeMain extends StatelessWidget {
  const KnowledgeMain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Knowledge',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        KnowledgeText(text: 'Flutter & Dart'),
        KnowledgeText(text: 'Git Knowledge'),
        KnowledgeText(text: 'Project Management'),
        KnowledgeText(text: 'Styling'),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  KnowledgeText({@required this.text});
  final text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          Icon(
            Icons.check_sharp,
            color: Colors.yellow,
          ),
          SizedBox(
            width: defaultPadding / 2,
          ),
          Text(text)
        ],
      ),
    );
  }
}
