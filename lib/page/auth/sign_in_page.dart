import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:messenger_app/page/page.dart';
import 'package:messenger_app/utils/utils.dart';
import 'package:messenger_app/widget/widget.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: Dimenstions.height30 * 3),
          Center(
            child: Text(
              'Sign In',
              style: TextStyle(
                fontSize: Dimenstions.font40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: Dimenstions.height20 * 2),
          CustomTextField(
            text: 'Email address',
            controller: emailController,
            hintText: 'Enter email',
          ),
          SizedBox(height: Dimenstions.height20),
          CustomTextField(
            text: 'Password',
            controller: passwordController,
            hintText: 'Enter password',
          ),
          SizedBox(height: Dimenstions.height20 * 2),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: Dimenstions.width20,
            ),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Submit'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.maxFinite, Dimenstions.height10 * 5),
              ),
            ),
          ),
          SizedBox(height: Dimenstions.height20),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: Dimenstions.width20,
            ),
            alignment: Alignment.centerRight,
            child: RichText(
              text: TextSpan(
                text: 'Don\'t have an account? ',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: Dimenstions.font14,
                ),
                children: [
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Get.to(
                            () => const SignUpPage(),
                            transition: Transition.fadeIn,
                          ),
                    text: 'Create',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: Dimenstions.font14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
