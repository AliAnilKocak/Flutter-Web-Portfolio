import 'dart:html';
import 'utils.dart';
import 'package:flutter_web/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: screenWidth(context),
          height: screenHeight(context),
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
                colors: [
                  Color.fromRGBO(230, 22, 223, 1),
                  Color.fromRGBO(170, 85, 242, 1)
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(0.5, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          child: Container(
            color: Colors.white,
            margin: EdgeInsets.only(
                left: 16.0, right: 16.0, top: 48.0, bottom: 48.0),
            width: 96,
            height: 45,
            child: Row(
              children: <Widget>[
                screenWidth(context) < 720
                    ? SizedBox()
                    : Container(
                        color: Color.fromRGBO(235, 239, 255, 1),
                        width: screenWidth(context, dividedBy: 5),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 48.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Container(
                                width: 96,
                                height: 96,
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://scontent.fist4-1.fna.fbcdn.net/v/t1.0-9/13876100_1739494609651527_5048670909490040761_n.jpg?_nc_cat=101&_nc_ht=scontent.fist4-1.fna&oh=e92993e69170fe10befbc0efc232a2f3&oe=5D5529D3"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 16.0),
                                child: Text(
                                  "Ali Anıl Koçak",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 45),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.center,
                                      width: screenWidth(context, dividedBy: 5),
                                      decoration: BoxDecoration(
                                        gradient: new LinearGradient(
                                            colors: [
                                              Color.fromRGBO(
                                                  151, 105, 247, 0.8),
                                              Color.fromRGBO(199, 53, 232, 0.8)
                                            ],
                                            begin: const FractionalOffset(
                                                0.0, 0.0),
                                            end: const FractionalOffset(
                                                0.5, 0.0),
                                            stops: [0.0, 1.0],
                                            tileMode: TileMode.clamp),
                                      ),
                                      height: 58,
                                      child: Text(
                                        "HOME",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: screenWidth(context, dividedBy: 5),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      height: 58,
                                      child: Text(
                                        "ABOUT ME",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.black),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: screenWidth(context, dividedBy: 5),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      height: 58,
                                      child: Text(
                                        "MY WORK",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.black),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: screenWidth(context, dividedBy: 5),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      height: 58,
                                      child: Text(
                                        "CONTACT",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                Column(
                  children: <Widget>[
                    Container(
                      width: screenWidth(context) < 720
                          ? screenWidth(context) - (32)
                          : screenWidth(context) -
                              (32 + screenWidth(context, dividedBy: 5)),
                      height: screenHeight(context) - 96,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://i.ibb.co/nPtnSWV/background.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 128.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Full Stack Web Developer & UI/UX Enthusiast",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: screenHeight(context, dividedBy: 12),
                            ),
                            Text(
                              "Worked on 50+ projects and built several beautifully crafted web-apps. Feel free to look at my recent projects below.",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            SizedBox(
                              height: screenHeight(context, dividedBy: 36),
                            ),
                            Text(
                              "Also you can stop by and say hello @twitter.com/KrupeshAnadkat.",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            SizedBox(
                              height: screenHeight(context, dividedBy: 12),
                            ),
                          ],
                        ),
                      )),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
