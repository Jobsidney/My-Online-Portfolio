import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Projects.dart';
import 'constants.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({required this.project});
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Spacer(),
          Text(
            project.description!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.3),
          ),
          Spacer(),
          TextButton(
            onPressed: () {},
            child: Text(
              'Read More>>>',
              style: TextStyle(color: primaryColor),
            ),
          )
        ],
      ),
    );
  }
}

class Spacer extends StatelessWidget {
  const Spacer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: defaultPadding,
    );
  }
}
