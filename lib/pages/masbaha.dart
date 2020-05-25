
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:com/pages/oldNumber.dart';
import 'package:flutter/animation.dart';

int count1 = 0;
String oldShared ;
String oldShared2 ;


class Masbaha extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Masbaha();
  }
}

class _Masbaha extends State<Masbaha> with SingleTickerProviderStateMixin {
  Animation flipAnimation;
  AnimationController animationController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getShared();
    initAnimation();
  }

  void getShared() async {
    String data = await FileMethod.ReadFile('Ex1.txt');
    setState(() {
      oldShared = data;
      oldShared2 = oldShared;
    });

  }
  void initAnimation() {
    animationController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    flipAnimation = Tween(begin:1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));
    animationController.forward();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget widget) {
          return UiWithOutAnimation();
        });
  }

  Widget UiWithOutAnimation() {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.green,
      body: Transform(
        transform: Matrix4.translationValues(height*flipAnimation.value, width*flipAnimation.value, 0.0),
        //transform: Matrix4.translationValues(width*flipAnimation.value, 0.0, 0.0),

        child: ListView(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 10)),
            Row(
              children: <Widget>[
                IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 33,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                SizedBox(width: 17,),
                SizedBox(
                  width: 270,
                  height: 53,
                  child: Card(
                    elevation: 6,
                    child: Align(
                      alignment: Alignment(0, 0),
                      child: Text(
                        "المسبحة الإلكترونية",
                        style: TextStyle(
                            color: Colors.teal.shade900,
                            fontWeight: FontWeight.bold,
                            fontFamily: "AmiriQuran",
                            height: 1,
                            fontSize: 22,
                            letterSpacing: 3,
                            wordSpacing: 2),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100.0),
                      topRight: Radius.circular(100.0)),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 12),
                      child: Card(
                        child: Padding(
                          padding: EdgeInsets.only(left: 80, right: 80),
                          child: Padding(
                            padding: EdgeInsets.only(top: 4,bottom: 4),
                            child: Text(
                              count1.toString(),
                              style: TextStyle(
                                fontFamily: "DigitalDisplayRegular",
                                fontSize: 55,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 30)),
                  Padding(
                    padding: EdgeInsets.only(right: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        SizedBox(
                          height: 45,
                          width: 45,
                          child: InkWell(
                            onTap: () async {
                              setState(() {
                                count1 = 0;
                              });

                            },
                            child: Card(
                              elevation: 7,
                              color: Colors.green,
                              shape: CircleBorder(),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 55)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 260,
                        width: 260,
                        child: InkWell(
                          onTap: () async {
                            FileMethod.WriteFile(count1.toString(), 'Ex1.txt');
                            setState(() {
                              count1 = count1 + 1;
                            });

                          },
                          child: Card(
                            elevation: 7,
                            color: Colors.green,
                            shape: CircleBorder(),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: SizedBox(
                          child: Card(
                              child: Padding(
                                padding: EdgeInsets.only(right: 4, left: 4,bottom: 2,top: 25),
                                child: Text(
                                  'عدد آخر تسبيحات : $oldShared',
                                  style: TextStyle(
                                      color: Colors.teal.shade900,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "AmiriQuran",
                                      height: 2,
                                      fontSize: 18,
                                      letterSpacing: 3,
                                      wordSpacing: 2),
                                  textAlign: TextAlign.center,
                                  textDirection: TextDirection.rtl,
                                ),
                              )),
                        ),
                      ),
                    ],
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}




