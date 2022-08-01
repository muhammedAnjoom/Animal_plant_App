import 'package:aninal_plant/utills/Strings.dart';
import 'package:aninal_plant/utills/text_style.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final double? opacity;
  const CustomAppBar({super.key, this.opacity});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Opacity(
        opacity: opacity!,
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
                 PopupMenuButton(
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10)
                   ),
                   itemBuilder: (context)=>[
                   PopupMenuItem(child: Text('About',))
                 ],
                 icon: Icon(Icons.menu,color: Colors.white,),
                 color: Colors.white,
                 )
              ],
            )),
      ),
    );
  }
}
