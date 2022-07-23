import 'package:aninal_plant/utills/text_style.dart';
import 'package:flutter/material.dart';

class SubscriptionContainer extends StatelessWidget {
  final String? amount, text, imagePath;
  const SubscriptionContainer(
      {Key? key, this.amount, this.text, this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.3), BlendMode.srcATop),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                imagePath!,
                height: height *0.5 / 4,
                width: width - 33,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 32,
            right: 32,
            child: Row(
              children: [
                Text(
                  text!,
                  style: TextStyles.subscriptionTitleTextStyle,
                ),
                const Spacer(),
                Text('\$$amount', style: TextStyles.subscriptionAmountTextStyle)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
