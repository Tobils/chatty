import 'package:flutter/material.dart';
import 'package:chatty/theme.dart';

class ChatTile extends StatelessWidget {
  final imageURL;
  final name;
  final chat;
  final time;
  final bool unread;

  ChatTile({this.imageURL, this.name, this.chat, this.time, this.unread});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            imageURL,
            height: 55,
            width: 55,
          ),
          SizedBox(width: 13,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: titleTextStyle,
              ),
              Text(
                chat,
                style: unread
                    ? subtitleTextStyle.copyWith(
                        color: blackColor
                ): subtitleTextStyle,
              )
            ],
          ),
          Spacer(),
          Text(
            time,
            style: subtitleTextStyle,
          ),
        ],
      ),
    );
  }
}
