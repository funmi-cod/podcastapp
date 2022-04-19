import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:podcastapp/components/constants.dart';
import 'package:podcastapp/components/size_config.dart';
import 'package:podcastapp/detail_page.dart';
import 'dart:ui';

import 'default_container.dart';
import 'vertical_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var imageList = [
    "assets/keep moving.jpeg",
    "assets/pic2.jpeg",
    "assets/pic3.jpeg",
    "assets/pic4.jpeg",
    "assets/pic5.jpeg"
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBgColor,
      appBar: AppBar(
        backgroundColor: kBgColor,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateWidth(5)),
          child: const CircleAvatar(
            backgroundImage: AssetImage("assets/profile.jpeg"),
            radius: 30,
          ),
        ),
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(text: "Maria Elijah", style: barTextStyle),
              const TextSpan(text: '\n'),
              TextSpan(text: 'Good morning 🙂', style: textStyle)
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              LineAwesomeIcons.search,
              color: kTextColor,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateWidth(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.04,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Play all your ", style: headingStyle),
                    const TextSpan(text: '\n'),
                    TextSpan(text: "favorite Podcast ", style: headingStyle),
                    const WidgetSpan(
                        child: Icon(
                      LineAwesomeIcons.headphones,
                      color: kTextColor,
                      size: 40,
                    )),
                    const TextSpan(text: '\n'),
                    TextSpan(
                        text: "Listen now, Enjoy every day ", style: textStyle),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Podcasts',
                    style: barTextStyle,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "see all",
                      style: buttonStyle,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateHeight(400),
                child: ListView.builder(
                  itemCount: imageList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () =>  Navigator.of(context).push(MaterialPageRoute(builder:(context) => DetailPage())),
                      child: Padding(
                        padding: EdgeInsets.all(getProportionateWidth(10)),
                        child: Material(
                          elevation: 10,
                          shadowColor: kShadowColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              getProportionateWidth(150),
                            ),
                            topRight: Radius.circular(getProportionateWidth(150)),
                            bottomLeft:
                                Radius.circular(getProportionateWidth(20)),
                            bottomRight:
                                Radius.circular(getProportionateWidth(20)),
                          ),
                          child: Hero(
                            tag: 'detail',
                            child: Container(
                              height: getProportionateHeight(350),
                              width: 300,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft:
                                        Radius.circular(getProportionateWidth(150)),
                                    topRight:
                                        Radius.circular(getProportionateWidth(150)),
                                    bottomLeft:
                                        Radius.circular(getProportionateWidth(20)),
                                    bottomRight:
                                        Radius.circular(getProportionateWidth(20)),
                                  ),
                                  image: DecorationImage(
                                      image: AssetImage(imageList[index]),
                                      fit: BoxFit.cover)),
                              child: Stack(
                                children: [
                                  Positioned(
                                    bottom: 10,
                                    right: 8,
                                    child: ClipRRect(
                                      child: BackdropFilter(
                                        filter:
                                            ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                                        child: Container(
                                          height: getProportionateHeight(120),
                                          width: getProportionateWidth(270),
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                kTextColor.withOpacity(0.6),
                                                kTextColor.withOpacity(0.7),
                                              ],
                                              begin: AlignmentDirectional.topStart,
                                              end: AlignmentDirectional.bottomEnd,
                                            ),
                                            borderRadius: const BorderRadius.all(
                                              Radius.circular(10),
                                            ),
                                          ),
                                          child: Column(
                                            //mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              Text(
                                                " Productivity",
                                                style: textStyle,
                                              ),
                                              RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                        text: " Maintain",
                                                        style: cardTextStyle),
                                                    const TextSpan(text: '\n'),
                                                    TextSpan(
                                                        text: ' Productivity #10',
                                                        style: cardTextStyle)
                                                  ],
                                                ),
                                              ),
                                              RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                        text: " Atal Design  . ",
                                                        style: textStyle),
                                                    const WidgetSpan(
                                                        child: Icon(
                                                      LineAwesomeIcons.clock,
                                                      color: kSubTextColor,
                                                      size: 15,
                                                    )),
                                                    TextSpan(
                                                        text: ' 20 Min',
                                                        style: textStyle)
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Upcomimg Podcasts',
                    style: barTextStyle,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "see all",
                      style: buttonStyle,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateHeight(100),
                child: VerticalList(imageList: imageList),
              )
            ],
          ),
        ),
      ),
    );
  }
}


