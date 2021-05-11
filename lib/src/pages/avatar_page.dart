import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Avatar Page'),
          actions: [
            Container(
              padding: EdgeInsets.all(5.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://image.flaticon.com/icons/png/512/147/147144.png'),
                radius: 30.0,
              ),
            ),
            Container(
                margin: EdgeInsets.only(right: 10.0),
                child: CircleAvatar(
                    child: Text('SL'), backgroundColor: Colors.purple))
          ],
        ),
        body: Center(
          child: FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image:
                NetworkImage('https://pbs.twimg.com/media/DxpkMK1WoAAmHmD.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
          ),
        ));
  }
}
