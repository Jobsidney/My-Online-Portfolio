import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobsidneypage/projects_card.dart';

import 'constants.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('My Projects', style: Theme.of(context).textTheme.headline6!),
        GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: my_projects.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: defaultPadding,
                mainAxisSpacing: defaultPadding,
                childAspectRatio: 1.3,
                crossAxisCount: 3),
            itemBuilder: (context, index) => ProjectCard(
                  project: my_projects[index],
                )),
      ],
    );
  }
}

class Project {
  final title, description;
  Project({this.title, this.description});
}

List<Project> my_projects = [
  Project(
      title: 'Responsive Web',
      description: 'On Flutter v2 web officially supported branch aaaaaa this'
          ' is when we all get that one desired job of our life. but '
          'when all setles that is blabla thta ca kill you ohh, look at '
          'the main agenda of the day that'
          ' metaphotostotyyshhtthwem when we die'),
  Project(title: 'DataScince', description: 'blablablaa'),
  Project(title: 'Outlook Email', description: 'we re design the email'),
  Project(
      title: 'Responsive Web',
      description: 'On Flutter v2 web officially supported branch'),
  Project(title: 'DataScince', description: 'blablablaa'),
  Project(title: 'Outlook Email', description: 'we re design the email'),
  Project(
      title: 'Responsive Web',
      description: 'On Flutter v2 web officially supported branch'),
  Project(title: 'DataScince', description: 'blablablaa'),
  Project(title: 'Outlook Email', description: 'we re design the email'),
];
