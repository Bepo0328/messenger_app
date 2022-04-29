import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:messenger_app/utils/utils.dart';

class ShowChatWidget extends StatelessWidget {
  final String chatRoomName;
  final DateTime chatRoomDate;

  const ShowChatWidget({
    Key? key,
    required this.chatRoomName,
    required this.chatRoomDate,
  }) : super(key: key);

  String formatDateTime(DateTime dateTime) {
    String nowDate = DateFormat('yyyy-MM-dd').format(DateTime.now());
    String formatDate = DateFormat('yyyy-MM-dd').format(dateTime);
    if (formatDate == nowDate) {
      formatDate = DateFormat('a HH:ss').format(dateTime);
    }
    return formatDate;
  }

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
                    chatRoomName,
                    style: TextStyle(
                      fontSize: Dimenstions.font20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    formatDateTime(chatRoomDate),
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
