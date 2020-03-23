import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:excellent/quiz.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  List<String> images = [
    "images/py.png",
    "images/java.png",
    "images/js.png",
    "images/cpp.png",
    "images/linux.png",
    "images/html5.png",
  ];

  List<String> des = [
    "",
    "",
    "",
    "",
    "",
  ];

  Widget customcard(String langname, String image, String des){
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 30.0,
      ),
      child: InkWell(
        onTap: (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => getjson(langname),
          ));
        },
        child: Material(
          color: Colors.white,
          elevation: 10.0,
          borderRadius: BorderRadius.circular(50.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(25.0),
                    child: Container(
                      height: 150.0,
                      width: 150.0,
                      child: ClipRect(
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            image,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    langname,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black54,
                      fontFamily: "Quando",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    des,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black54,
                      fontFamily: "Alike"
                    ),
                    maxLines: 5,
                    textAlign: TextAlign.justify,
                  ),
                  
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown, DeviceOrientation.portraitUp
    ]);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Excellent",
          style: TextStyle(
            fontFamily: "Quando",
          ),
        ),
      ),
      backgroundColor: Colors.blue,
      body: ListView(
        children: <Widget>[
          customcard("C++", images[3], des[0]),
          customcard("HTML", images[5], des[1]),
          
        ],
      ),
    );
  }
}