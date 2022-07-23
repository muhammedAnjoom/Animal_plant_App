import 'package:aninal_plant/utills/Strings.dart';
import 'package:aninal_plant/utills/text_style.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Opacity(
        opacity: 0.8,
        child: Container(
            padding: const EdgeInsets.only(top: 10, right: 16, left: 16),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: Strings.APP_NAME,
                        style: TextStyles.appNameTextStyle,
                      ),
                      const TextSpan(text: '\n'),
                      TextSpan(
                        text: Strings.TAG_NAME,
                        style: TextStyles.tageLineStyle,
                      ),
                    ]
                    )),
                const Spacer(),
                const Icon(
                  Icons.menu,
                  color: Colors.white,
                )
              ],
            )),
      ),
    );
  }
}
