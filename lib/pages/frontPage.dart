import 'package:com/pages/masaa_thkr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:com/pages/sabah_thkr.dart';
import 'package:com/pages/athkar_salah.dart';
import 'package:com/pages/masbaha.dart';
import 'package:com/pages/about.dart';

class frontpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _frontpage();
  }
}

class _frontpage extends State<frontpage> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffca5116),
        title: Text(
          "تطبيق أذكار الصباح والمساء",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 26,
              fontFamily: "AmiriQuran",
              fontWeight: FontWeight.normal,
              height: 0,
              color: Colors.white,
              wordSpacing: 3,
              letterSpacing: 1),
        ),
        elevation: 0,
      ),
      backgroundColor: Color(0xffca5116),
      bottomNavigationBar: _getNavBar(context),
    );
  }
}

_getNavBar(context) {
  return Stack(
    children: <Widget>[
      Container(
        height: MediaQuery.of(context).size.height - 85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(120.0)),
          image: DecorationImage(
            image: AssetImage("images/3.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Align(
              alignment: Alignment(0, 0.5),
              child: Padding(
                padding: EdgeInsets.only(left: 8),
                  child: RaisedButton(
                    color: Colors.white,
                    elevation: 9,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return masaaThkr();
                      }));
                    },
                    child: Text(
                      "أذكار المساء",
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontWeight: FontWeight.w600,
                        fontFamily: "AmiriQuran",
                        height: 1.0,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    padding:
                        EdgeInsets.only(left: 20, top: 12, right: 20, bottom: 12),
                    shape: StadiumBorder(),
                  ),
              ),
            ),
            SizedBox(
              width: 40,
            ),
            Align(
              alignment: Alignment(0, 0.5),
              child: Padding(
                padding: EdgeInsets.only(right: 8),


                  child: RaisedButton(
                    elevation: 7,
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return sabahThkr();
                      }));
                    },
                    child: Text(
                      "أذكار الصباح",
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontWeight: FontWeight.w600,
                        fontFamily: "AmiriQuran",
                        height: 1.0,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    padding:
                    EdgeInsets.only(left: 20, top:12, right: 20, bottom: 12),
                    shape: StadiumBorder(),
                  ),
              ),
            ),
          ],
        ),
      ),
      Positioned(
        bottom: 0,
        child: ClipPath(
          clipper: NavBarClipper(),
          child: Container(
            height: 70,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.teal,
                  Colors.teal.shade900,
                ])),
          ),
        ),
      ),
      Positioned(
        bottom: 50,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _buildNavItem(Icons.device_unknown, false, 1, context),
            SizedBox(width: 1),
            _buildNavItem(Icons.speaker_notes, true, 2, context),
            SizedBox(width: 1),
            _buildNavItem(Icons.favorite_border, false, 3, context),
          ],
        ),
      ),
      Positioned(
        bottom: 5,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('حول التطبيق',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontFamily: "AmiriQuran",
                    height: 4,
                    fontSize: 18)),
            SizedBox(
              width: 1,
            ),
            Text('أذكار بعد الصلاة',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontFamily: "AmiriQuran",
                    height: 4,
                    fontSize: 18)),
            SizedBox(
              width: 1,
            ),
            Text('المسبحة',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontFamily: "AmiriQuran",
                    height: 4,
                    fontSize: 18)),
          ],
        ),
      )
    ],
  );
}

_buildNavItem(IconData icon, bool active, int position, BuildContext context) {
  return GestureDetector(
    onTap: () {
      if (position == 3) {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Masbaha();
        }));
      } else if (position == 2) {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return athkarSalalh();
        }));
      } else if (position == 1) {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return about();
        }));
      }
    },
    child: CircleAvatar(
      radius: 30,
      backgroundColor: Colors.teal.shade900,
      child: CircleAvatar(
        radius: 25,
        backgroundColor:
            active ? Colors.white.withOpacity(0.9) : Colors.transparent,
        child: Icon(
          icon,
          color: active ? Colors.black : Colors.white.withOpacity(0.9),
        ),
      ),
    ),
  );
}

class NavBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    var sw = size.width;
    var sh = size.height;

    path.cubicTo(sw / 12, 0, sw / 12, 2 * sh / 5, 2 * sw / 12, 2 * sh / 5);
    path.cubicTo(3 * sw / 12, 2 * sh / 5, 3 * sw / 12, 0, 4 * sw / 12, 0);
    path.cubicTo(
        5 * sw / 12, 0, 5 * sw / 12, 2 * sh / 5, 6 * sw / 12, 2 * sh / 5);
    path.cubicTo(7 * sw / 12, 2 * sh / 5, 7 * sw / 12, 0, 8 * sw / 12, 0);
    path.cubicTo(
        9 * sw / 12, 0, 9 * sw / 12, 2 * sh / 5, 10 * sw / 12, 2 * sh / 5);
    path.cubicTo(11 * sw / 12, 2 * sh / 5, 11 * sw / 12, 0, sw, 0);
    path.lineTo(sw, sh);
    path.lineTo(0, sh);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
