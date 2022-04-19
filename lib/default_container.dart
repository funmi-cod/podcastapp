import 'package:flutter/material.dart';

import 'components/size_config.dart';

class DefaultContainer extends StatelessWidget {
  const DefaultContainer({
    this.child,
    required this.image,
    Key? key,
  }) : super(key: key);

  final Widget? child;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateHeight(350),
      //width: 70,
      decoration:  BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(getProportionateWidth(150)),
            topRight: Radius.circular(getProportionateWidth(150)),
            bottomLeft: Radius.circular(getProportionateWidth(20)),
            bottomRight: Radius.circular(getProportionateWidth(20)),
          ),
          image: DecorationImage(
              image: AssetImage(image!),
              fit: BoxFit.cover
          )),
    );
  }
}