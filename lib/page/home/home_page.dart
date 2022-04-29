import 'package:flutter/material.dart';
import 'package:messenger_app/utils/utils.dart';
import 'package:messenger_app/widget/widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Chatting',
          style: TextStyle(
            fontSize: Dimenstions.font24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomButton(
                onPressed: () {
                  debugPrint('Search icon');
                },
                icon: Icons.search,
                iconSize: Dimenstions.iconSize30,
              ),
              SizedBox(width: Dimenstions.width10),
              CustomButton(
                onPressed: () {
                  debugPrint('Add message icon');
                },
                icon: Icons.add_comment_outlined,
                iconSize: Dimenstions.iconSize30,
              ),
            ],
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: List.generate(12, (index) {
                return GestureDetector(
                  onTap: () {
                    debugPrint('index: $index');
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      vertical: Dimenstions.height10 / 2,
                      horizontal: Dimenstions.width20,
                    ),
                    child: ShowChatWidget(
                      chatRoomName: 'Name $index',
                      chatRoomDate: DateTime(2022, 4, 29 - index),
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
