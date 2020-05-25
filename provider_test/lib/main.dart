import 'package:flutter/material.dart';
import 'package:providertest/provider/counter.dart';
import 'package:provider/provider.dart';
import 'package:providertest/provider/fontSize.dart';
import 'package:providertest/provider/rate.dart';
import 'package:providertest/provider/rate.dart';

void main() {
  runApp(
      ChangeNotifierProvider(
        create:(context)=> counter(),
        child: MainPage(),
      )
  );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (BuildContext context)=>RateNotifier(),
      ),
      ChangeNotifierProvider(
        create: (BuildContext context)=>FontSizeNotifier(),
      ),
        ],
      child: MyApp()
    );
  }
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
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

   // var fontSizeP = Provider.of<FontSizeNotifier>(context);

   // var RateProvider = Provider.of<RateNotifier>(context);


    final bloc = Provider.of<counter>(context);
      return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<FontSizeNotifier>(
                builder: (context , fontSizeNotifier , child){
                  return Text('Rate Us',style:
                  TextStyle(
                      fontSize: fontSizeNotifier.fontSize
                  ),
                  );
                },
            ),
            SizedBox(
              height: 40,
            ),
            Text(
             bloc.cnt.toString(),style: TextStyle(fontSize: 44),),

           Consumer<RateNotifier>(builder:(context , rateNotifier, child){
             return  getFaces(rateNotifier.rate.toInt());
           }
           ),
           Consumer<FontSizeNotifier>(
               builder:(context , fontSizeNotifier , child){
                 return  Text('Change Text Size',style:
                 TextStyle(
                     fontSize: fontSizeNotifier.fontSize
                 ),
                 );
               }
           ),
            Consumer<FontSizeNotifier>(
                builder: (context , fontSizeSlidNotifier, child){
                  return Slider(value: fontSizeSlidNotifier.fontSize,
                    onChanged: (newValue){
                      fontSizeSlidNotifier.changeFontSize(newValue);
                    },
                    max: 50,
                    min: 20,
                  );
                }
            ),
            Text('Rate Them'),
           Consumer<RateNotifier>(
               builder: (
               context , rateSlidNotifier, child){
                 return  Slider(value: rateSlidNotifier.rate,
                   onChanged: (newValue){
                     rateSlidNotifier.changeRating(newValue);
                   },
                   max: 4,
                   min: 0,
                 );
               }
           ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: bloc.inCnt,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  }

  getFaces(int index) {
    switch (index) {
      case 0:
        return Icon(
          Icons.sentiment_very_dissatisfied,
          size: 60,
          color: Colors.red,
        );
      case 1:
        return Icon(
          Icons.sentiment_dissatisfied,
          size: 60,
          color: Colors.redAccent,
        );
      case 2:
        return Icon(
          Icons.sentiment_neutral,
          size: 60,
          color: Colors.amber,
        );
      case 3:
        return Icon(
          Icons.sentiment_satisfied,
          size: 60,
          color: Colors.lightGreen,
        );
      case 4:
        return Icon(
          Icons.sentiment_very_satisfied,
          size: 66,
          color: Colors.green,
        );
    }
  }
