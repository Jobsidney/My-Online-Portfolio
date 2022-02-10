import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:jobsidneypage/Responsive.dart';

import 'constants.dart';

class HomeBannerBigPart extends StatelessWidget {
  const HomeBannerBigPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(fit: StackFit.expand, children: [
        Image.asset(
          'images/piano.jpg',
          fit: BoxFit.cover,
        ),
        Container(
          color: darkColor.withOpacity(0.66),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Discover my Amazing Work',
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )
                      : Theme.of(context).textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
              if (Responsive.isMobileLarge(context))
                const SizedBox(
                  height: defaultPadding / 2,
                ),
              MyBuildingWork(),
              SizedBox(
                height: defaultPadding / 2,
              ),
              if (!Responsive.isMobileLarge(context))
                ElevatedButton(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: defaultPadding * 2),
                        backgroundColor: primaryColor),
                    onPressed: () {},
                    child: Text(
                      'EXPLORE NOW',
                      style: TextStyle(color: darkColor),
                    ))
            ],
          ),
        )
      ]),
    );
  }
}

class MyBuildingWork extends StatelessWidget {
  const MyBuildingWork({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) FlutterCodeText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          Text('I build '),
          AnimatedTextKit(animatedTexts: [
            TyperAnimatedText('Responsive websites and Mobile Apps',
                speed: Duration(milliseconds: 60)),
            TyperAnimatedText('Mobile Apps: Android & ios',
                speed: Duration(milliseconds: 60)),
            TyperAnimatedText('Perfect App UI ',
                speed: Duration(milliseconds: 60)),
            TyperAnimatedText('Chat Apps', speed: Duration(milliseconds: 60)),
          ]),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          if (!Responsive.isMobileLarge(context)) FlutterCodeText(),
        ],
      ),
    );
  }
}

class FlutterCodeText extends StatelessWidget {
  const FlutterCodeText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(text: '<', children: [
      TextSpan(text: 'Flutter', style: TextStyle(color: primaryColor)),
      TextSpan(text: '>')
    ]));
  }
}
