import 'package:flutter/material.dart';

class about extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _about();
  }
}

class _about extends State<about> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: ListView(children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 14)),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            SizedBox(
              width: 80,
            ),
            SizedBox(
              width: 130,
              child: Card(
                child: Text(
                  'حول التطبيق',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: "AmiriQuran",
                      height: 2,
                      fontSize: 20,
                      letterSpacing: 3,
                      wordSpacing: 2),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Row(
              children: <Widget>[Padding(padding: EdgeInsets.only(top: 10))],
            ),
            Container(
                padding: EdgeInsets.only(top: 90),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100.0),
                        topRight: Radius.circular(100.0)),
                    color: Colors.white),
                child: Center(
                    child: Column(
                  children: <Widget>[
                    SizedBox(
                      width: 333,
                      height: 254,
                      child: Card(
                        child: Text(
                          'تطبيق أذكاري :                   هو تطبيق مبسط جداً لأذكار الصباح والمساء وأذكار مابعد الصلاة المفروضة بالإظافة الى مسبحة إلكترونية بسيطة , عسى ان يساعدنا على المحافظة على أذكارنا ',
                          style: TextStyle(
                              color: Colors.teal.shade900,
                              fontWeight: FontWeight.bold,
                              fontFamily: "AmiriQuran",
                              height: 2,
                              fontSize: 20,
                              letterSpacing: 3,
                              wordSpacing: 2),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 273,
                      height: 190,
                      child: Card(
                        child: Text(
                          'أسأل الله لي ولكم الثبات على ذكره والقبول لسائر عباداتنا                  أخوكم المبرمج :                  خالد صالح العلي',
                          style: TextStyle(
                              color: Colors.teal.shade900,
                              fontWeight: FontWeight.bold,
                              fontFamily: "AmiriQuran",
                              height: 2,
                              fontSize: 20,
                              letterSpacing: 3,
                              wordSpacing: 2),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                )))
          ],
        ),
      ]),
    );
  }
}
