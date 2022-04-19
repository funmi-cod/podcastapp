import 'package:flutter/material.dart';

import 'components/constants.dart';
import 'components/size_config.dart';

class VerticalList extends StatelessWidget {
  const VerticalList({
    Key? key,
    required this.imageList,
  }) : super(key: key);

  final List<String> imageList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: imageList.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.all(getProportionateWidth(5)),
          child: Row(
            children: [
              Container(
                height: getProportionateHeight(70),
                width: getProportionateWidth(70),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(imageList[index]),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(getProportionateWidth(10)),
                child: SizedBox(
                  height: getProportionateHeight(70),
                  width: getProportionateWidth(250),
                  child: Text(
                    'PodEuri: Playing games with your eyes closed #5',
                    style: listTextStyle,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}