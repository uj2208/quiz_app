import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import '../../constants.dart';
import 'components/body.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading:  IconButton(icon:Icon(Icons.arrow_back_ios_outlined),onPressed: _controller.prevQuestion,color: kSecondaryColor, ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(icon:Icon(Icons.arrow_forward_ios_outlined),onPressed: _controller.nextQuestion,color: kSecondaryColor, ),
        ],
      ),
      body: const Body(),
    );
  }
}
