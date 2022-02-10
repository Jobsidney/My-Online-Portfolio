import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobsidneypage/Responsive.dart';
import 'package:jobsidneypage/constants.dart';
import 'package:jobsidneypage/recommendations.dart';
import 'package:jobsidneypage/side_menu.dart';

import 'High_Lights.dart';
import 'HomePagePart.dart';
import 'Projects.dart';
import 'Responsive.dart';
import 'area_info.dart';
import 'codingSkills.dart';
import 'knowledge.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgColor,
              leading: Builder(
                builder: (context) => IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: Icon(
                      Icons.menu,
                    )),
              ),
            ),
      drawer: EntireSideMenu(),
      body: Container(
        constraints: BoxConstraints(maxHeight: maxWidth),
        child: Row(
          children: [
            if (Responsive.isDesktop(context))
              Expanded(flex: 2, child: EntireSideMenu()),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        color: darkColor,
                        child: Column(
                          children: [
                            HomeBannerBigPart(),
                          ],
                        ),
                      ),
                      HighlightsMainWork(),
                      SizedBox(
                        height: 5,
                      ),
                      MyProjects(),
                      RecommendationsMain()
                    ],
                  ),
                  padding: EdgeInsets.only(right: defaultPadding),
                ))
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class EntireSideMenu extends StatelessWidget {
  const EntireSideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          SideMenu(),
          Expanded(
              child: SingleChildScrollView(
            padding: EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                AreaInfo(
                  title: 'Residence',
                  text: 'Kenya',
                ),
                AreaInfo(
                  title: 'City',
                  text: 'Nairobi',
                ),
                AreaInfo(
                  title: 'Age',
                  text: '22 yrs',
                ),
                Skills(),
                SizedBox(
                  height: defaultPadding,
                ),
                CodingSkills(),
                KnowledgeMain(),
                Divider(),
                TextButton(
                  onPressed: () {},
                  child: FittedBox(
                    child: Row(
                      children: [
                        Text(
                          'Download CV',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        SizedBox(width: defaultPadding / 2),
                        Icon(Icons.file_download)
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Color(0xFF24242E),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.zoom_in_sharp,
                            color: Colors.white70,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.chat_bubble_rounded,
                            color: Colors.white70,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.email_outlined,
                            color: Colors.white70,
                          )),
                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class RecommendationsMain extends StatelessWidget {
  const RecommendationsMain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recommendations',
            style: Theme.of(context).textTheme.headline6,
          ),
          // SizedBox(
          //   height: defaultPadding,
          // ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        recomendation_list.length,
                        (index) => Padding(
                          padding: const EdgeInsets.only(right: defaultPadding),
                          child: RecommendationCard(
                            recomendation: recomendation_list[index],
                          ),
                        ),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({required this.recomendation});
  final Recommendation recomendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      color: secondaryColor,
      padding: EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            recomendation.name,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(
            recomendation.source,
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Text(
            recomendation.text,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.3),
          )
        ],
      ),
    );
  }
}
