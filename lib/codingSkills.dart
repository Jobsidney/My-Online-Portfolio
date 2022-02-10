import 'package:flutter/material.dart';

import 'animated_progress_indicator.dart';
import 'constants.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(
          color: Colors.white70,
          // thickness: 1.0,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Skills',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: AspectTweenAnimation(
                percentage: 0.86,
                label: 'Flutter',
              ),
            ),
            SizedBox(
              width: 13.0,
            ),
            Expanded(
                child: AspectTweenAnimation(
              percentage: 0.8,
              label: 'Dart',
            )),
            SizedBox(
              width: 13.0,
            ),
            Expanded(
                child: AspectTweenAnimation(
              percentage: 0.75,
              label: 'Firebase',
            )),
            SizedBox(
              width: 13.0,
            ),
            // Expanded(
            //     child: AspectTweenAnimation(
            //   percentage: 0.64,
            //   label: 'Python',
            // ))
          ],
        ),
      ],
    );
  }
}

class CodingSkills extends StatelessWidget {
  const CodingSkills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(
          color: Colors.white70,
        ),
        // Padding(padding: const EdgeInsets.symmetric(vertical: defaultPadding)),
        Text(
          'Coding',
          style: Theme.of(context).textTheme.subtitle2,
        ),
        SizedBox(
          height: 5.0,
        ),
        SkillProggressionBar(
          skillName: 'Dart',
          barPercentage: 0.8,
        ),

        SkillProggressionBar(skillName: 'Python', barPercentage: 0.72),
        SkillProggressionBar(skillName: 'Html', barPercentage: 0.75),
        SkillProggressionBar(skillName: 'CSS', barPercentage: 0.57),
        SkillProggressionBar(skillName: 'Python', barPercentage: 0.72),
        SkillProggressionBar(skillName: 'Android dev', barPercentage: 0.84),
        SkillProggressionBar(skillName: 'JavaScript', barPercentage: 0.52)
      ],
    );
  }
}

class SkillProggressionBar extends StatelessWidget {
  SkillProggressionBar(
      {@required this.skillName, @required this.barPercentage});
  final skillName;
  final barPercentage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: barPercentage),
          duration: defaultDuration,
          builder: (context, double value, child) => Column(
                children: [
                  Row(
                    children: [
                      Text(skillName),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text((barPercentage * 100).toInt().toString() + '%')
                    ],
                  ),
                  SizedBox(
                    height: defaultPadding / 2,
                  ),
                  LinearProgressIndicator(
                    value: value,
                    color: primaryColor,
                    backgroundColor: darkColor,
                  ),
                ],
              )),
    );
  }
}
