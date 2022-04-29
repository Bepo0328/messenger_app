import 'package:flutter/material.dart';
import 'package:messenger_app/utils/utils.dart';

class ShowChatWidget extends StatelessWidget {
  const ShowChatWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimenstions.height20 * 3,
      width: double.maxFinite,
      color: Colors.white,
      child: Row(
        children: [
          Container(
            height: Dimenstions.height15 * 3,
            width: Dimenstions.width15 * 3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimenstions.radius15),
              color: Colors.blue[200],
              image: const DecorationImage(
                image: AssetImage('assets/image/person.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                left: Dimenstions.width20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Chat Room Name',
                    style: TextStyle(
                      fontSize: Dimenstions.font20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Date',
                    style: TextStyle(
                      fontSize: Dimenstions.font14,
                      color: Colors.grey[600],
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
