import 'package:aninal_plant/common/custom_appBar.dart';
import 'package:aninal_plant/utills/Strings.dart';
import 'package:aninal_plant/utills/text_style.dart';
import 'package:flutter/material.dart';

class ScreenDashboard extends StatelessWidget {
  const ScreenDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffb98959),
      body: Stack(
        fit: StackFit.expand,
        children: [
          // separte two parts
          // top section
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 0.40,
            // ignore: avoid_unnecessary_containers
            child: Container(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  // background Wallpepar
                  Image.asset(
                    'assets/elephant.jpg',
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Column(
                    children: [
                      const CustomAppBar(
                        opacity: 1,
                      ),
                      Expanded(
                          child: Align(
                        alignment: const Alignment(0, -0.6),
                        child: Text(
                          Strings.welcomeToAlpent,
                          style: TextStyles.bigHeadingTextStyle,
                          textAlign: TextAlign.center,
                        ),
                      ))
                    ],
                  ),
                ],
              ),
            ),
          ),
          // second section
          FractionallySizedBox(
              alignment: Alignment.bottomCenter,
              heightFactor: 0.65,
              child: Container(
                // all container
                decoration: const BoxDecoration(
                  color: Color(0xffb98959),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 8),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          Strings.relateToYou,
                          style: TextStyles.enjoyTextStyle,
                        ),
                      ),
                    ),
                    // related section
                    Expanded(
                      child:SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              // first card
                              margin:const  EdgeInsets.only(left: 10),
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(
                                        "assets/tiger.jpg",
                                        fit: BoxFit.cover,
                                        width: MediaQuery.of(context).size.width*0.5,
                                        ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 6),
                                  child: Text(
                                    Strings.lifeWithATiger,
                                    style: TextStyles.titleTextStyle,
                                  ),
                                    ),
                                     Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 6),
                                  child: Text(
                                    Strings.lorenIpsum,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyles.body3TextStyle,
                                  ),
                                  
                                    )
                                ],
                              ),
                            ),
                            const SizedBox(width: 10,),
                            // ignore: sized_box_for_whitespace
                            Container(
                              // second card
                              width: MediaQuery.of(context).size.width*0.5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(
                                        "assets/wild_animals.jpeg",
                                        fit: BoxFit.cover,
                                        width: MediaQuery.of(context).size.width*0.5,
                                        ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 6),
                                  child: Text(
                                    Strings.wildAnimal,
                                    style: TextStyles.titleTextStyle,
                                  ),
                                    ),
                                     Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 6),
                                  child: Text(
                                    Strings.lorenIpsum,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyles.body3TextStyle,
                                  ),
                                  
                                    )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                      ),
                      // title quick categories
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 8),
                        child: Text(
                          Strings.quickText,
                          style: TextStyles.titleTextStyle,
                        )),
                        // small cards
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // 4 column cards
                          Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color(0xff8c5835)),
                                child: Image.asset(
                                  "assets/bear.png",
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                Strings.bear,
                                style: TextStyles.body2TextStyle,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color(0xff8c5835)),
                                child: Image.asset(
                                  "assets/lion.png",
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                Strings.lion,
                                style: TextStyles.body2TextStyle,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color(0xff8c5835)),
                                child: Image.asset(
                                  "assets/reptiles.png",
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                Strings.reptiles,
                                style: TextStyles.body2TextStyle,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color(0xff8c5835)),
                                child: Image.asset(
                                  "assets/pets.png",
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                Strings.pets,
                                style: TextStyles.body2TextStyle,
                              )
                            ],
                          ),
                          
                        ],
                      ),
                    ),
                    const SizedBox(height: 32,)
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
