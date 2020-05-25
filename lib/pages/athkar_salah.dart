import 'package:flutter/material.dart';

class athkarSalalh extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _athkarSalalh();
  }
}

class _athkarSalalh extends State<athkarSalalh> {
  String thkr1 =
      "أَسْـتَغْفِرُ الله، أَسْـتَغْفِرُ الله، أَسْـتَغْفِرُ الله  اللّهُـمَّ أَنْـتَ السَّلامُ ، وَمِـنْكَ السَّلام ، تَبارَكْتَ يا ذا الجَـلالِ وَالإِكْـرام ";
  String thkr2 =
      "لا إلهَ إلاّ اللّهُ وحدَهُ لا شريكَ لهُ، لهُ المُـلْكُ ولهُ الحَمْد، وهوَ على كلّ شَيءٍ قَدير، اللّهُـمَّ لا مانِعَ لِما أَعْطَـيْت، وَلا مُعْطِـيَ لِما مَنَـعْت، وَلا يَنْفَـعُ ذا الجَـدِّ مِنْـكَ الجَـد.";
  String thkr3 =
      "لا إلهَ إلاّ اللّه, وحدَهُ لا شريكَ لهُ، لهُ الملكُ ولهُ الحَمد، وهوَ على كلّ شيءٍ قدير، لا حَـوْلَ وَلا قـوَّةَ إِلاّ بِاللهِ، لا إلهَ إلاّ اللّـه، وَلا نَعْـبُـدُ إِلاّ إيّـاه, لَهُ النِّعْـمَةُ وَلَهُ الفَضْل وَلَهُ الثَّـناءُ الحَـسَن، لا إلهَ إلاّ اللّهُ مخْلِصـينَ لَـهُ الدِّينَ وَلَوْ كَـرِهَ الكـافِرون. ";
  String thkr4 = "سُـبْحانَ اللهِ، والحَمْـدُ لله ، واللهُ أكْـبَر. ";
  String thkr5 =
      "لا إلهَ إلاّ اللّهُ وَحْـدَهُ لا شريكَ لهُ، لهُ الملكُ ولهُ الحَمْد، وهُوَ على كُلّ شَيءٍ قَـدير. ";
  String thkr6 =
      "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم :                           قُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ.";
  String thkr7 =
      "أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيم ِ                  اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ. [آية الكرسى - البقرة 255] ";
  String thkr8 =
      "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم :                                          قُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ.";
  String thkr9 =
      "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم  :                                 قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ.";
  String thkr10 =
      "أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِ :           اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ. [آية الكرسى - البقرة 255] ";
  String thkr11 = "";
  String thkr12 =
      "لا إلهَ إلاّ اللّهُ وحْـدَهُ لا شريكَ لهُ، لهُ المُلكُ ولهُ الحَمْد، يُحيـي وَيُمـيتُ وهُوَ على كُلّ شيءٍ قدير. ";
  String thkr13 =
      "اللّهُـمَّ إِنِّـي أَسْأَلُـكَ عِلْمـاً نافِعـاً وَرِزْقـاً طَيِّـباً ، وَعَمَـلاً مُتَقَـبَّلاً. ";
  String thkr14 = "اللَّهُمَّ أَجِرْنِي مِنْ النَّار. ";
  String thkr15 =
      "اللَّهُمَّ أَعِنِّي عَلَى ذِكْرِكَ وَشُكْرِكَ وَحُسْنِ عِبَادَتِكَ. ";

  String thkrCount1 = "مرة واحدة";
  String thkrCount3 = " ثلاث مرات ";
  String thkrCount10 = "عَشْر مَرّات";
  String thkrCount33 = "ثلاث وثلاثين مرة";
  String thkrCount7 = "سبع مرات";

  int count1 = 01;
  int count2 = 01;
  int count3 = 01;
  int count4 = 033;
  int count5 = 01;
  int count6 = 03;
  int count7 = 01;

  int count8 = 10;
  int count9 = 01;
  int count10 = 7;
  int count11 = 01;
  int count12 = 03;
  int count13 = 03;
  int count14 = 01;
  int count15 = 01;

  Color color1 = Colors.red;
  Color color2 = Colors.green;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          centerTitle: true,
          title: Text('أذكار بعد الصلاة المفروضة',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: "AmiriQuran",
                height: 1,
                fontSize: 21,
                letterSpacing: 3,
                wordSpacing: 2
            ),
          ),
          backgroundColor: Color(0xffca5116),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment(0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 398,
                    height: 354,
                    child: Opacity(
                      opacity: 0.9,
                      child: Card(
                          elevation: 9,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(12),
                                child: RichText(
                                  textDirection: TextDirection.rtl,
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: thkrCount1,
                                      style: TextStyle(
                                          color: Colors.teal.shade900,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "AmiriQuran",
                                          height: 2,
                                          fontSize: 23,
                                          letterSpacing: 3,
                                          wordSpacing: 2
                                      ),
                                    ),
                                    TextSpan(text: "\n"),
                                    TextSpan(text: "\n"),
                                    TextSpan(
                                        text: thkr1,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "AmiriQuran",
                                          height: 2,
                                          fontSize: 20,
                                          letterSpacing: 3,
                                          wordSpacing: 2
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: 370,
                                height: 100,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (count1 > 0) {
                                        count1 = count1 - 1;
                                      }
                                    });
                                  },
                                  child: Card(
                                    elevation: 7,
                                    color: count1 ==  0? color1 : color2,
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                            padding: EdgeInsets.only(top: 24)),
                                        Text(
                                          count1.toString(),
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: "DigitalDisplayRegular",
                                              fontSize: 70
                                          ),
                                        ),
                                        Align(
                                            alignment: Alignment(0.9, 0),
                                            child: Text("1"))
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
            ///////////////////////////2
            Container(
              alignment: Alignment(0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 398,
                    height: 400,
                    child: Opacity(
                      opacity: 0.9,
                      child: Card(
                          elevation: 9,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(12),
                                child: RichText(
                                  textDirection: TextDirection.rtl,
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: thkrCount1,
                                      style: TextStyle(
                                          color: Colors.teal.shade900,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "AmiriQuran",
                                          height: 2,
                                          fontSize: 22,
                                          letterSpacing: 3,
                                          wordSpacing: 2
                                      ),
                                    ),
                                    TextSpan(text: "\n"),
                                    TextSpan(text: "\n"),
                                    TextSpan(
                                        text: thkr2,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "AmiriQuran",
                                          height: 2,
                                          fontSize: 20,
                                          letterSpacing: 3,
                                          wordSpacing: 2
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: 370,
                                height: 100,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (count2 > 0) {
                                        count2 = count2 - 1;
                                      }
                                    });
                                  },
                                  child: Card(
                                      elevation: 7,
                                      color: count2 ==  0? color1 : color2,
                                      child: Column(
                                        children: <Widget>[
                                          Padding(
                                              padding: EdgeInsets.only(top: 24)),
                                          Text(
                                            count2.toString(),
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: "DigitalDisplayRegular",
                                                fontSize: 70
                                            ),
                                          ),
                                          Align(
                                              alignment: Alignment(0.9, 0),
                                              child: Text("2"))
                                        ],
                                      )),
                                ),
                              ),
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
            ///////////////////////////////3
            Container(
              alignment: Alignment(0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 398,
                    height: 478,
                    child: Opacity(
                      opacity: 0.9,
                      child: Card(
                          elevation: 9,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(12),
                                child: RichText(
                                  textDirection: TextDirection.rtl,
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: thkrCount1,
                                      style: TextStyle(
                                          color: Colors.teal.shade900,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "AmiriQuran",
                                          height: 2,
                                          fontSize: 22,
                                          letterSpacing: 3,
                                          wordSpacing: 2
                                      ),
                                    ),
                                    TextSpan(text: "\n"),
                                    TextSpan(text: "\n"),
                                    TextSpan(
                                        text: thkr3,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "AmiriQuran",
                                          height: 2,
                                          fontSize: 20,
                                          letterSpacing: 3,
                                          wordSpacing: 2
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: 370,
                                height: 100,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (count3 > 0) {
                                        count3 = count3 - 1;
                                      }
                                    });
                                  },
                                  child: Card(
                                      elevation: 7,
                                      color: count3 ==  0? color1 : color2,
                                      child: Column(
                                        children: <Widget>[
                                          Padding(
                                              padding: EdgeInsets.only(top: 24)),
                                          Text(
                                            count3.toString(),
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: "DigitalDisplayRegular",
                                                fontSize: 70
                                            ),
                                          ),
                                          Align(
                                              alignment: Alignment(0.9, 0),
                                              child: Text("3"))
                                        ],
                                      )),
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
            ///////////////////////////4
            Container(
              alignment: Alignment(0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 398,
                    height: 284,
                    child: Opacity(
                      opacity: 0.9,
                      child: Card(
                          elevation: 9,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(12),
                                child: RichText(
                                  textDirection: TextDirection.rtl,
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: thkrCount33,
                                      style: TextStyle(
                                          color: Colors.teal.shade900,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "AmiriQuran",
                                          height: 2,
                                          fontSize: 22,
                                          letterSpacing: 3,
                                          wordSpacing: 2
                                      ),
                                    ),
                                    TextSpan(text: "\n"),
                                    TextSpan(text: "\n"),
                                    TextSpan(
                                        text: thkr4,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "AmiriQuran",
                                          height: 2,
                                          fontSize: 20,
                                          letterSpacing: 3,
                                          wordSpacing: 2
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: 370,
                                height: 100,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (count4 > 0) {
                                        count4 = count4 - 1;
                                      }
                                    });
                                  },
                                  child: Card(
                                      elevation: 7,
                                      color: count4 ==  0? color1 : color2,
                                      child: Column(
                                        children: <Widget>[
                                          Padding(
                                              padding: EdgeInsets.only(top: 20)),
                                          Text(
                                            count4.toString(),
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: "DigitalDisplayRegular",
                                                fontSize: 70
                                            ),
                                          ),
                                          Align(
                                              alignment: Alignment(0.9, 0),
                                              child: Text("4"))
                                        ],
                                      )),
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
            ////////////////////////////5
            Container(
              alignment: Alignment(0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 398,
                    height: 322,
                    child: Opacity(
                      opacity: 0.9,
                      child: Card(
                          elevation: 9,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(12),
                                child: RichText(
                                  textDirection: TextDirection.rtl,
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: thkrCount1,
                                      style: TextStyle(
                                          color: Colors.teal.shade900,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "AmiriQuran",
                                          height: 2,
                                          fontSize: 22,
                                          letterSpacing: 3,
                                          wordSpacing: 2
                                      ),
                                    ),
                                    TextSpan(text: "\n"),
                                    TextSpan(text: "\n"),
                                    TextSpan(
                                        text: thkr5,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "AmiriQuran",
                                          height: 2,
                                          fontSize: 20,
                                          letterSpacing: 3,
                                          wordSpacing: 2
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: 370,
                                height: 100,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (count5 > 0) {
                                        count5 = count5 - 1;
                                      }
                                    });
                                  },
                                  child: Card(
                                      elevation: 7,
                                      color: count5 ==  0? color1 : color2,
                                      child: Column(
                                        children: <Widget>[
                                          Padding(
                                              padding: EdgeInsets.only(top: 20)),
                                          Text(
                                            count5.toString(),
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: "DigitalDisplayRegular",
                                                fontSize: 70
                                            ),
                                          ),
                                          Align(
                                              alignment: Alignment(0.9, 0),
                                              child: Text("5",style: TextStyle(fontSize: 16),))
                                        ],
                                      )),
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
            /////////////////////////////6
            Container(
              alignment: Alignment(0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 398,
                    height: 368,
                    child: Opacity(
                      opacity: 0.9,
                      child: Card(
                          elevation: 9,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(12),
                                child: RichText(
                                  textDirection: TextDirection.rtl,
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: thkrCount3,
                                      style: TextStyle(
                                          color: Colors.teal.shade900,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "AmiriQuran",
                                          height: 2,
                                          fontSize: 22,
                                          letterSpacing: 3,
                                          wordSpacing: 2
                                      ),
                                    ),
                                    TextSpan(text: "\n"),
                                    TextSpan(text: "\n"),
                                    TextSpan(
                                        text: thkr6,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "AmiriQuran",
                                          height: 2,
                                          fontSize: 20,
                                          letterSpacing: 3,
                                          wordSpacing: 2
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: 370,
                                height: 100,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (count6 > 0) {
                                        count6 = count6 - 1;
                                      }
                                    });
                                  },
                                  child: Card(
                                      elevation: 7,
                                      color:count6 ==  0? color1 : color2,
                                      child: Column(
                                        children: <Widget>[
                                          Padding(
                                              padding: EdgeInsets.only(top: 20)),
                                          Text(
                                            count6.toString(),
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: "DigitalDisplayRegular",
                                                fontSize: 70
                                            ),
                                          ),
                                          Align(
                                              alignment: Alignment(0.9, 0),
                                              child: Text("6",style: TextStyle(fontSize: 16),))
                                        ],
                                      )),
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
//////////////////////////////////////////7
            Container(
              alignment: Alignment(0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 398,
                    height: 410,
                    child: Opacity(
                      opacity: 0.9,
                      child: Card(
                          elevation: 9,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(12),
                                child: RichText(
                                  textDirection: TextDirection.rtl,
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: thkrCount3,
                                      style: TextStyle(
                                          color: Colors.teal.shade900,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "AmiriQuran",
                                          height: 2,
                                          fontSize: 22,
                                          letterSpacing: 3,
                                          wordSpacing: 2
                                      ),
                                    ),
                                    TextSpan(text: "\n"),
                                    TextSpan(text: "\n"),
                                    TextSpan(
                                        text: thkr8,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "AmiriQuran",
                                          height: 2,
                                          fontSize: 20,
                                          letterSpacing: 3,
                                          wordSpacing: 2
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: 370,
                                height: 100,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (count12 > 0) {
                                        count12 = count12 - 1;
                                      }
                                    });
                                  },
                                  child: Card(
                                      elevation: 7,
                                      color:count12 ==  0? color1 : color2,
                                      child: Column(
                                        children: <Widget>[
                                          Padding(
                                              padding: EdgeInsets.only(top: 20)),
                                          Text(
                                            count12.toString(),
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: "DigitalDisplayRegular",
                                                fontSize: 70
                                            ),
                                          ),
                                          Align(
                                              alignment: Alignment(0.9, 0),
                                              child: Text("7",style: TextStyle(fontSize: 16),))
                                        ],
                                      )),
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
/////////////////////////////////////////8
            Container(
              alignment: Alignment(0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 398,
                    height: 410,
                    child: Opacity(
                      opacity: 0.9,
                      child: Card(
                          elevation: 9,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(12),
                                child: RichText(
                                  textDirection: TextDirection.rtl,
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: thkrCount3,
                                      style: TextStyle(
                                          color: Colors.teal.shade900,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "AmiriQuran",
                                          height: 2,
                                          fontSize: 22,
                                          letterSpacing: 3,
                                          wordSpacing: 2
                                      ),
                                    ),
                                    TextSpan(text: "\n"),
                                    TextSpan(text: "\n"),
                                    TextSpan(
                                        text: thkr9,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "AmiriQuran",
                                          height: 2,
                                          fontSize: 20,
                                          letterSpacing: 3,
                                          wordSpacing: 2
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: 370,
                                height: 100,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (count13 > 0) {
                                        count13 = count13 - 1;
                                      }
                                    });
                                  },
                                  child: Card(
                                      elevation: 7,
                                      color: count13 ==  0? color1 : color2,
                                      child: Column(
                                        children: <Widget>[
                                          Padding(
                                              padding: EdgeInsets.only(top: 20)),
                                          Text(
                                            count13.toString(),
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: "DigitalDisplayRegular",
                                                fontSize: 70
                                            ),
                                          ),
                                          Align(
                                              alignment: Alignment(0.9, 0),
                                              child: Text("8",style: TextStyle(fontSize: 16),))
                                        ],
                                      )),
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
////////////////////////////////////////////////////9
            Container(
              alignment: Alignment(0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 398,
                    height: 568,
                    child: Opacity(
                      opacity: 0.9,
                      child: Card(
                          elevation: 9,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(12),
                                child: RichText(
                                  textDirection: TextDirection.rtl,
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: thkrCount1,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "AmiriQuran",
                                          height: 2,
                                          fontSize: 22,
                                          letterSpacing: 3,
                                          wordSpacing: 2
                                      ),
                                    ),
                                    TextSpan(text: "\n"),
                                    TextSpan(text: "\n"),
                                    TextSpan(
                                        text: thkr7,
                                      style: TextStyle(
                                          color: Colors.teal.shade900,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "AmiriQuran",
                                          height: 2,
                                          fontSize: 20,
                                          letterSpacing: 3,
                                          wordSpacing: 2
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: 370,
                                height: 100,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (count7 > 0) {
                                        count7 = count7 - 1;
                                      }
                                    });
                                  },
                                  child: Card(
                                      elevation: 7,
                                      color:count7 ==  0? color1 : color2,
                                      child: Column(
                                        children: <Widget>[
                                          Padding(
                                              padding: EdgeInsets.only(top: 20)),
                                          Text(
                                            count7.toString(),
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: "DigitalDisplayRegular",
                                                fontSize: 70
                                            ),
                                          ),
                                          Align(
                                              alignment: Alignment(0.9, 0),
                                              child: Text("9",style: TextStyle(fontSize: 16),))
                                        ],
                                      )),
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
            ///////////////////////10
            Container(
              alignment: Alignment(0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 398,
                    height: 338,
                    child: Opacity(
                      opacity: 0.9,
                      child: Card(
                          elevation: 9,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(12),
                                child: RichText(
                                  textDirection: TextDirection.rtl,
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: thkrCount10,
                                      style: TextStyle(
                                          color: Colors.teal.shade900,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "AmiriQuran",
                                          height: 2,
                                          fontSize: 22,
                                          letterSpacing: 3,
                                          wordSpacing: 2
                                      ),
                                    ),
                                    TextSpan(text: "\n"),
                                    TextSpan(text: "\n"),
                                    TextSpan(
                                        text: thkr12,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "AmiriQuran",
                                          height: 2,
                                          fontSize: 20,
                                          letterSpacing: 3,
                                          wordSpacing: 2
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: 370,
                                height: 100,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (count8 > 0) {
                                        count8 = count8 - 1;
                                      }
                                    });
                                  },
                                  child: Card(
                                      elevation: 7,
                                      color: count8 ==  0? color1 : color2,
                                      child: Column(
                                        children: <Widget>[
                                          Padding(
                                              padding: EdgeInsets.only(top: 20)),
                                          Text(
                                            count8.toString(),
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: "DigitalDisplayRegular",
                                                fontSize: 70
                                            ),
                                          ),
                                          Align(
                                              alignment: Alignment(0.9, 0),
                                              child: Text("10",style: TextStyle(fontSize: 16),))
                                        ],
                                      )),
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
            //////////////////////////////11
            Container(
              alignment: Alignment(0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 398,
                    height: 322,
                    child: Opacity(
                      opacity: 0.9,
                      child: Card(
                          elevation: 9,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(12),
                                child: RichText(
                                  textDirection: TextDirection.rtl,
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: thkrCount1,
                                      style: TextStyle(
                                          color: Colors.teal.shade900,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "AmiriQuran",
                                          height: 2,
                                          fontSize: 22,
                                          letterSpacing: 3,
                                          wordSpacing: 2
                                      ),
                                    ),
                                    TextSpan(text: "\n"),
                                    TextSpan(text: "\n"),
                                    TextSpan(
                                        text: thkr13,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "AmiriQuran",
                                          height: 2,
                                          fontSize: 20,
                                          letterSpacing: 3,
                                          wordSpacing: 2
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: 370,
                                height: 100,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (count9 > 0) {
                                        count9 = count9 - 1;
                                      }
                                    });
                                  },
                                  child: Card(
                                      elevation: 7,
                                      color: count9 ==  0? color1 : color2,
                                      child: Column(
                                        children: <Widget>[
                                          Padding(
                                              padding: EdgeInsets.only(top: 20)),
                                          Text(
                                            count9.toString(),
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: "DigitalDisplayRegular",
                                                fontSize: 70
                                            ),
                                          ),
                                          Align(
                                              alignment: Alignment(0.9, 0),
                                              child: Text("11",style: TextStyle(fontSize: 16),))
                                        ],
                                      )),
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
            //////////////////////////////////12
            Container(
              alignment: Alignment(0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 398,
                    height: 280,
                    child: Opacity(
                      opacity: 0.9,
                      child: Card(
                          elevation: 9,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(12),
                                child: RichText(
                                  textDirection: TextDirection.rtl,
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: thkrCount7,
                                      style: TextStyle(
                                          color: Colors.teal.shade900,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "AmiriQuran",
                                          height: 2,
                                          fontSize: 22,
                                          letterSpacing: 3,
                                          wordSpacing: 2
                                      ),
                                    ),
                                    TextSpan(text: "\n"),
                                    TextSpan(text: "\n"),
                                    TextSpan(
                                        text: thkr14,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "AmiriQuran",
                                          height: 2,
                                          fontSize: 20,
                                          letterSpacing: 3,
                                          wordSpacing: 2
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: 370,
                                height: 100,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (count10 > 0) {
                                        count10 = count10 - 1;
                                      }
                                    });
                                  },
                                  child: Card(
                                      elevation: 7,
                                      color:count10 ==  0? color1 : color2,
                                      child: Column(
                                        children: <Widget>[
                                          Padding(
                                              padding: EdgeInsets.only(top: 20)),
                                          Text(
                                            count10.toString(),
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: "DigitalDisplayRegular",
                                                fontSize: 70
                                            ),
                                          ),
                                          Align(
                                              alignment: Alignment(0.9, 0),
                                              child: Text("12",style: TextStyle(fontSize: 16),))
                                        ],
                                      )),
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
            ////////////////////////////////13
            Container(
              alignment: Alignment(0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 398,
                    height: 270,
                    child: Opacity(
                      opacity: 0.9,
                      child: Card(
                          elevation: 9,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(12),
                                child: RichText(
                                  textDirection: TextDirection.rtl,
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: thkrCount1,
                                      style: TextStyle(
                                          color: Colors.teal.shade900,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "AmiriQuran",
                                          height: 2,
                                          fontSize: 20,
                                          letterSpacing: 3,
                                          wordSpacing: 2
                                      ),
                                    ),
                                    TextSpan(text: "\n"),
                                    TextSpan(text: "\n"),
                                    TextSpan(
                                        text: thkr15,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "AmiriQuran",
                                          height: 2,
                                          fontSize: 20,
                                          letterSpacing: 3,
                                          wordSpacing: 2
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: 370,
                                height: 100,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (count11 > 0) {
                                        count11 = count11 - 1;
                                      }
                                    });
                                  },
                                  child: Card(
                                      elevation: 7,
                                      color:count11 == 0? color1 : color2,
                                      child: Column(
                                        children: <Widget>[
                                          Padding(
                                              padding: EdgeInsets.only(top: 20)),
                                          Text(
                                            count11.toString(),
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: "DigitalDisplayRegular",
                                                fontSize: 70
                                            ),
                                          ),
                                          Align(
                                              alignment: Alignment(0.9, 0),
                                              child: Text("13",style: TextStyle(fontSize: 16),))
                                        ],
                                      )),
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
