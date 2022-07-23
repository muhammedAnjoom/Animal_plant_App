
import 'package:aninal_plant/common/custom_appBar.dart';
import 'package:aninal_plant/common/subscription_container.dart';
import 'package:aninal_plant/utills/Strings.dart';
import 'package:aninal_plant/utills/text_style.dart';
import 'package:flutter/material.dart';

class ScreenChoos extends StatelessWidget {
  const ScreenChoos({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xFFB98959),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 const CustomAppBar(),
                 Padding(
                   padding: const EdgeInsets.only(
                     top: 16,
                     left: 16
                   ),
                   child: Text(
                     Strings.choosPlan,
                     style: TextStyles.headingText,
                     ),
                 ),
                const SubscriptionContainer(
                   text: Strings.weekEvent,
                   amount: '1.99',
                   imagePath: 'assets/weekly.jpg',
                 ),
                  const SubscriptionContainer(
                   text: Strings.oneWeekEvent,
                   amount: '2.59',
                   imagePath: 'assets/3monthly.jpg',
                 ),
                  const SubscriptionContainer(
                   text: Strings.twoWeekEvent,
                   amount: '3.99',
                   imagePath: 'assets/6monthly.jpg',
                 ),
                 const SubscriptionContainer(
                   text: Strings.threeWeekEvent,
                   amount: '4.59  ',
                   imagePath: 'assets/monthly.jpg',
                 )
              ],
            )
          ],
        ),
      ),
    );
  }
}