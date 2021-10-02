import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz/controllers/quizcontroller.dart';

import 'components/category_card.dart';
import 'components/search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List quizImages = ["5", "6", "7", "8", "9"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.deepPurple,
                Colors.deepPurpleAccent,
              ]),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children:  [
                  const SeachBox(),
                   Obx(() {
                    var categories = Get.find<QuizController>().categories;
                    return Container(
                      padding:const EdgeInsets.symmetric(horizontal: 16),
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics:const NeverScrollableScrollPhysics(),
                        itemCount: categories.length,
                        itemBuilder: (_, index) => QuizCategoryCard(
                          categories[index],
                          image: quizImages[index % (quizImages.length)],
                        ),
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
