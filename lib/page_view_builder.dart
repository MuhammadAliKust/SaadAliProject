import 'package:flutter/material.dart';
import 'package:saad_ali/models/onboarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewBuilderDemo extends StatelessWidget {
  PageViewBuilderDemo({super.key});

  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(title: 'Trending News', image: 'assets/images/2.png'),
    OnBoardingModel(
        title: 'React, Save & Share News', image: 'assets/images/3.png'),
    OnBoardingModel(
        title: 'Videos & Live News From YouTube', image: 'assets/images/4.png'),
  ];

  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page View"),
      ),
      body: Column(
        children: [
          Expanded(

            child: PageView.builder(
              controller: controller,
                itemCount: onBoardingList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return Column(
                    children: [
                      Image.asset(onBoardingList[i].image),
                      Text(onBoardingList[i].title.toString(),style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold
                      ),)
                    ],
                  );
                }),
          ),
          SmoothPageIndicator(
              controller: controller,  // PageController
              count:  onBoardingList.length,
              effect:  ExpandingDotsEffect(),  // your preferred effect
              onDotClicked: (index){
              }
          ),
          SizedBox(height: 40,)
        ],
      ),
    );
  }
}
