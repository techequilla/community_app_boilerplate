import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.only(top: 20.0),
        child: Column(
          children: <Widget>[
            TopHomeImageAsset(),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "A Website built for the community, by the community",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 25.0,
                        fontFamily: 'AnticSlab',
                        fontWeight: FontWeight.w700,
                        color: Colors.green,
                      ),
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.ltr,
                    ),
                  ),
                ),
              ],
            ),
            JoinButton(),
            BotHomeImageAsset(),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "Always be updated about our upcoming announcements!",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 25.0,
                        fontFamily: 'AnticSlab',
                        fontWeight: FontWeight.w700,
                        color: Colors.pink,
                      ),
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.ltr,
                    ),
                  ),
                ),
              ],
            ),
            ViewUsButton()
          ],
        ),
      ),
    );
  }
}

class TopHomeImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/Images/webtech-1.jpg');
    Image image = Image(
      image: assetImage,
    );

    return Container(
      child: image,
    );
  }
}

class BotHomeImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/Images/teamsc.jpg');
    Image image = Image(
      image: assetImage,
    );

    return Container(
      child: image,
    );
  }
}

class ViewUsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(
          'View Us',
          style: TextStyle(
            decoration: TextDecoration.none,
            fontFamily: 'AnticSlab',
            fontWeight: FontWeight.w700,
          ),
        ),
        onPressed: () {
          //action
        },
      ),
    );
  }
}

class JoinButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: RaisedButton(
        color: Colors.lightGreen,
        textColor: Colors.white,
        child: Text(
          'Join Our Team Now!',
          style: TextStyle(
            decoration: TextDecoration.none,
            fontFamily: 'AnticSlab',
            fontWeight: FontWeight.w700,
          ),
        ),
        onPressed: () {
          //action
        },
      ),
    );
  }
}
