import 'package:chatty/theme.dart';
import 'package:flutter/material.dart';
import 'package:chatty/widgets/chat_tile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add, size: 28),
        backgroundColor: greenColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40,),
                Image.asset(
                  'assets/images/banner-img.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(height: 20),
                Text(
                  "Sabrina Carpenter",
                  style: titleMainStyle,
                ),
                SizedBox(height: 2,),
                Text(
                  "Travel Freelancer",
                  style: subTitleMainStyle,
                ),
                SizedBox(height: 30,),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                        top: Radius.circular(40)
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Friends',
                        style: titleTextStyle,
                      ),
                      ChatTile(
                          imageURL:"assets/images/user-1.png",
                          name:"Joshuer",
                          chat:"Sorry, you're not my ty..",
                          time: "Now",
                          unread: true
                      ),
                      ChatTile(
                          imageURL:"assets/images/user-2.png",
                          name:"Gabriella",
                          chat:"I saw it clear and mig..",
                          time: "2:30",
                          unread: false
                      ),
                      SizedBox(height: 30,),
                      Text(
                        'Groups',
                        style: titleTextStyle,
                      ),
                      ChatTile(
                          imageURL:"assets/images/group1.png",
                          name:"Jakarta Fair",
                          chat:"Why does everyone ca..",
                          time: "11:11",
                          unread: false
                      ),
                      ChatTile(
                          imageURL:"assets/images/group2.png",
                          name:"Angga",
                          chat:"Hello spirit of learn..",
                          time: "7:11",
                          unread: false
                      ),
                      ChatTile(
                          imageURL:"assets/images/group3.png",
                          name:"Bentley",
                          chat:"The car which does not..",
                          time: "6:11",
                          unread: true
                      ),
                      ChatTile(
                          imageURL:"assets/images/group1.png",
                          name:"Jakarta Fair",
                          chat:"Why does everyone ca..",
                          time: "11:11",
                          unread: false
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
