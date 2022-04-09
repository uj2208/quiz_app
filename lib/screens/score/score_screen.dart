import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:quiz_app/screens/welcome/welcome_screen.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    var assetsImage = const AssetImage('assets/icons/pix.jpg');
    var image = Image(image: assetsImage, fit: BoxFit.cover);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading:  IconButton(icon: const Icon(Icons.repeat_sharp),
          onPressed: (){
          _qnController.nameOfQuizTaker ="";
          _qnController.numOfCorrectAns=0;
          _qnController.correctAns=0;
          _qnController.questionNumber.value=1;
          _qnController.pageController = PageController();
          Get.to(WelcomeScreen());
          },
          color: Colors.white, ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          image,
          Column(
            children: [
              const Spacer(flex: 3),
              Text(
                _qnController.nameOfQuizTaker+" your score is ",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: kSecondaryColor),
              ),
              //Spacer(),
              Text(
                "${_qnController.numOfCorrectAns * 10}/${_qnController.questions.length * 10}",
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(color: kSecondaryColor),
              ),
              const Spacer(flex: 3),
            ],
          )
        ],
      ),
    );
  }
}
