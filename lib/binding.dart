
import 'package:get/instance_manager.dart';
import 'package:quiz/controllers/quizcontroller.dart';

void configure() {
  Get.put<QuizController>(QuizController());
}