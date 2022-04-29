import 'package:flutter/material.dart';
import 'package:messenger_app/utils/utils.dart';
import 'package:messenger_app/widget/show_chat.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: Dimenstions.height20,
                  horizontal: Dimenstions.width30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Chatting',
                      style: TextStyle(
                        fontSize: Dimenstions.font24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              debugPrint('Search icon');
                            },
                            child: Icon(
                              Icons.search,
                              size: Dimenstions.iconSize30,
                            ),
                          ),
                          SizedBox(width: Dimenstions.width10),
                          GestureDetector(
                            onTap: () {
                              debugPrint('Add message icon');
                            },
                            child: Icon(
                              Icons.add_comment_outlined,
                              size: Dimenstions.iconSize30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: List.generate(10, (index) {
                      return GestureDetector(
                        onTap: () {
                          debugPrint('index: $index');
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(
                            vertical: Dimenstions.height10 / 2,
                            horizontal: Dimenstions.width20,
                          ),
                          child: const ShowChatWidget(),
                        ),
                      );
                    }),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
