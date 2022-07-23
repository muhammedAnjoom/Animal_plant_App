import 'package:aninal_plant/common/custom_appBar.dart';
import 'package:aninal_plant/utills/Strings.dart';
import 'package:flutter/material.dart';

import '../utills/text_style.dart';

class ScreenLanding extends StatelessWidget {
  const ScreenLanding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          "assets/elephant.jpg",
          height: height,
          width: double.infinity,
          fit: BoxFit.fitHeight,
        ),
        Column(
          children: [
            const CustomAppBar(),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(
                top: 35,
                right: 35,
                left: 35,
                bottom: 20
              ),
              child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: Strings.READY_TEXT,
                          style: TextStyles.bigHeadingTextStyle,
                        ),
                        const TextSpan(text: '\n'),
                        TextSpan(
                          text: Strings.READY_TO_WATCH_DESC,
                          style: TextStyles.bodyTextStyle,
                        ),
                         const TextSpan(text: '\n'),
                         const TextSpan(text: '\n'),
                        TextSpan(
                          text: Strings.START_ENJOYING,
                          style: TextStyles.enjoyTextStyle,
                        ),
                      ]
                      )),
            ),
          ],
        ),
        Positioned(
          bottom: -40,
          right: -40,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xFFD3A070).withOpacity(0.8)
            ),
            child:const Align(
              alignment: Alignment(-0.4,-0.4),
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
                size: 30,
                ),
            ),
          )
          )
      ]),
    );
  }
}
