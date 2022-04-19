import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import 'components/constants.dart';
import 'components/size_config.dart';
import 'default_container.dart';
import 'homepage.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBgColor,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: getProportionateWidth(10)),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.02,),
              Padding(
                padding:  EdgeInsets.all(getProportionateWidth(30)),
                child: Material(
                  elevation: 10,
                  shadowColor: kShadowColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(getProportionateWidth(150)),
                    topRight: Radius.circular(getProportionateWidth(150)),
                    bottomLeft: Radius.circular(getProportionateWidth(20)),
                    bottomRight: Radius.circular(getProportionateWidth(20)),
                  ),
                  child: const DefaultContainer(
                    image: 'assets/keep moving.jpeg',
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.02,),
              Text("Listen to the podcast,\n    feel the pain", style: headingStyle,textAlign: TextAlign.center,),
              SizedBox(height: SizeConfig.screenHeight * 0.02,),
              Text("Listen to podcast anywhere\n    at anytime", style: textStyle,textAlign: TextAlign.center,),

            ],
          ),
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage(),),),
        child: Material(
          shape: const CircleBorder(side: BorderSide.none),
          elevation: 2,
          color: kPrimaryColor,
          child: Padding(
            padding:  EdgeInsets.all(getProportionateWidth(15)),
            child: const Icon(
              LineAwesomeIcons.arrow_right,
              size: 40,
              color: kBgColor,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}