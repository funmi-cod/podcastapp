import 'package:flutter/material.dart';
import 'package:podcastapp/components/constants.dart';
import 'package:podcastapp/default_container.dart';

import 'components/size_config.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBgColor,
      appBar: AppBar(
        backgroundColor: kBgColor,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Info',
          style: barTextStyle,
        ),
        iconTheme: const IconThemeData(color: kTextColor),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateWidth(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.all(getProportionateWidth(30)),
              child: Material(
                elevation: 10,
                shadowColor: kShadowColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(getProportionateWidth(150)),
                  topRight: Radius.circular(getProportionateWidth(150)),
                  bottomLeft: Radius.circular(getProportionateWidth(20)),
                  bottomRight: Radius.circular(getProportionateWidth(20)),
                ),
                child: const Hero(
                  tag: 'detail',
                  child: DefaultContainer(image: 'assets/keep moving.jpeg'),
                ),
              ),
            ),
            Text(
              'Maintain Productivity #01',
              style: headingStyle,
            ),
            Text(
              "productivity  .  Asal Design",
              style: textStyle,
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.02,
            ),
            Text(
              'Description',
              style: barTextStyle,
            ),
            Text(
              'On this episode I\'d share tips'
              ' on how to manage time to be more productive',
              style: textStyle,
            ),
          ],
        ),
      ),
    );
  }
}
