import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:quiz_app/screens/quiz/quiz_screen.dart';

class WelcomeScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var assetsImage = const AssetImage('assets/icons/pix.jpg');
    var image = Image(image: assetsImage, fit: BoxFit.cover);
    QuestionController _qnController = Get.put(QuestionController());
    TextEditingController controller = TextEditingController();
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Stack(
          children: [
           image,
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(flex: 2),
                    Text(
                      "Let's Play Quiz,",
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: kSecondaryColor, fontWeight: FontWeight.bold),
                    ),
                    const Text("Enter your name below",style: TextStyle(color: kSecondaryColor,fontWeight: FontWeight.bold),),
                    const Spacer(),
                    TextFormField(
                      cursorColor: Colors.white,
                      controller: controller,
                      decoration: const InputDecoration(
                        focusColor: kSecondaryColor,
                        prefixIcon: Icon(Icons.perm_identity,color: Colors.white,),
                        filled: true,
                        fillColor: kSecondaryColor,
                        hintText: "Full Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          borderSide: BorderSide(
                            color: kSecondaryColor,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          borderSide: BorderSide(
                            color: kSecondaryColor,
                          ),
                        ),
                      ),
                      validator: (text) {
                        if (text == null || text.trim().isEmpty) {
                          return 'Name is a required field';
                        }
                        return null;
                      },
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: (){
                        if (_formKey.currentState!.validate()) {
                          // TODO submit
                          _qnController.nameOfQuizTaker = controller.text;
                          Get.to(QuizScreen());
                        }
                      },
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(kDefaultPadding * 0.75), // 15
                        decoration: const BoxDecoration(
                          gradient: kPrimaryGradient,
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        child: Text(
                          "Lets Start Quiz",
                          style: Theme.of(context)
                              .textTheme
                              .button!
                              .copyWith(color: Colors.black),
                        ),
                      ),
                    ),
                    const Spacer(flex: 2), // it will take 2/6 spaces
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
