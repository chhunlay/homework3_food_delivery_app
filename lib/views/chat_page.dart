import 'package:flutter/material.dart';

import 'message_details.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  static const String routeName = '/chat_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).primaryColor.withOpacity(0.2),
            ),
            margin: EdgeInsets.all(7),
            child: Image(
              image: AssetImage('assets/img/food_logo.png'),
            )),
        title: Text(
          "Chat",
          style: TextStyle(fontFamily: 'BalsamiqSans-Regular'),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36),
                  color: Colors.grey[200],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ('Search'),
                      ),
                      Icon(Icons.search),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ChatDetailsCustomize(
                deliverTime: '20.00',
                name: 'Chhun Lay',
                notification: '3',
                status: 'I\'ll be there in 2 mns',
                onTap: (){Navigator.pushReplacementNamed(context, MessagePage.routeName);},
                imagePath: AssetImage(
                  'assets/img/chhunlay_anime02_blue.png',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ChatDetailsCustomize(
                deliverTime: '18.00',
                name: 'Sev Thorth',
                notification: '6',
                status: 'I\ll be there in 2 mns',
                onTap: (){Navigator.pushReplacementNamed(context, MessagePage.routeName);},
                imagePath: AssetImage(
                  'assets/img/sev_thorth.jpg',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ChatDetailsCustomize(
                deliverTime: '20.00',
                name: 'Chhun Lay',
                notification: '3',
                status: 'I\ll be there in 2 mns',
                onTap: (){Navigator.pushReplacementNamed(context, MessagePage.routeName);},
                imagePath: AssetImage(
                  'assets/img/chhunlay_anime02_blue.png',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ChatDetailsCustomize(
                deliverTime: '20.00',
                name: 'Chhun Lay',
                notification: '3',
                status: 'I\ll be there in 2 mns',
                onTap: (){Navigator.pushReplacementNamed(context, MessagePage.routeName);},
                imagePath: AssetImage(
                  'assets/img/chhunlay_anime02_blue.png',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ChatDetailsCustomize(
                deliverTime: '20.00',
                name: 'Chhun Lay',
                notification: '3',
                status: 'I\ll be there in 2 mns',
                onTap: (){Navigator.pushReplacementNamed(context, MessagePage.routeName);},
                imagePath: AssetImage(
                  'assets/img/chhunlay_anime02_blue.png',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ChatDetailsCustomize(
                deliverTime: '20.00',
                name: 'Chhun Lay',
                notification: '3',
                status: 'I\ll be there in 2 mns',
                onTap: (){Navigator.pushReplacementNamed(context, MessagePage.routeName);},
                imagePath: AssetImage(
                  'assets/img/chhunlay_anime02_blue.png',
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class ChatDetailsCustomize extends StatelessWidget {
  ChatDetailsCustomize({
    required this.imagePath,
    required this.onTap,
    required this.status,
    required this.name,
    required this.deliverTime,
    required this.notification,
    Key? key,
  }) : super(key: key);

  VoidCallback onTap;
  AssetImage imagePath;
  String name;
  String status;
  String deliverTime;
  String notification;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.yellow[50],
        ),
        child: Row(
          children: [
            SizedBox(
              width: 15,
            ),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(36),
                image: DecorationImage(
                  image: imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 20, top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    status,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 20, top: 15, bottom: 15, left: 90),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.red),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        notification,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Text(
                    deliverTime,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
