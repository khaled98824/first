import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:com/bloc/cartListBloc.dart';
import 'package:flutter/material.dart';
import 'package:com/model/foodItem.dart';
import 'package:com/cart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Cart',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      blocs: [Bloc((i) => CartListBloc())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: ListView(children: <Widget>[
          FirstHalf(),
          SizedBox(
            height: 30,
          ),
        for (var foodItem in foodItemList.foodItems)
          ItemContainer(foodItim: foodItem)
        ]),
      )),
    );
  }
}

class ItemContainer extends StatelessWidget{
  final FoodItem foodItim ;
  ItemContainer({this.foodItim});

  final CartListBloc bloc = BlocProvider.getBloc<CartListBloc>();

  addToCart(FoodItem foodItem){
    bloc.addToList(foodItem);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
return GestureDetector(
  onTap: (){
    addToCart(foodItim);

    final snackBar = SnackBar(
      content: Text('${foodItim.title} added to the cart'),
      duration: Duration(milliseconds: 550),
    );
    Scaffold.of(context).showSnackBar(snackBar);
  },
  child: Items (
    hotel:foodItim.hotel,
    itemName: foodItim.title,
    itemPrice: foodItim.price,
      imageUrl:foodItim.imgUrl,
      leftAligned: (foodItim.id % 2==0)? true :false,
  ),
);
  }

}

class Items extends StatelessWidget {
  final String hotel;
  final String itemName;
  final double itemPrice;
  final String imageUrl;
  final bool leftAligned;

  Items({
    @required this.hotel,
    @required this.itemName,
    @required this.itemPrice,
    @required this.imageUrl,
    @required this.leftAligned

  });

  @override
  Widget build(BuildContext context) {
    double containerPadding =45;
    double containerPaddingRadius = 10;

    // TODO: implement build
  return Column(
    children: <Widget>[
      Container(
        padding: EdgeInsets.only(
          left: leftAligned? 0 : containerPadding,
          right: leftAligned ? containerPadding : 0,
        ),
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child:ClipRRect(
                borderRadius: BorderRadius.horizontal(
                  left: leftAligned ? Radius.circular(0) : Radius.circular(containerPaddingRadius),
                  right: leftAligned ? Radius.circular(containerPaddingRadius) : Radius.circular(0)
                ),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.fill,
                ),
              ) ,
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.only(left: leftAligned ? 20 : 0,
                right: leftAligned ? 0 : 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          itemName,
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Text(
                        "\$$itemPrice",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 19,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(text:
                    TextSpan(
                      style: TextStyle(
                        color:Colors.black54,
                        fontSize: 15,
                      ),
                      children: [
                        TextSpan(text: "by "),
                        TextSpan(text: hotel,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          )

                        )
                      ]
                    )
                    ),
                  ),
                  SizedBox(height: containerPadding,)



                ],
              ),
            )
          ],
        ),
      )
    ],
  );
  }



}

Widget categories (){
  return Container(
    height: 185,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        CategoryListItem(
          categoryIcon: Icons.bug_report,
          categoryName: "Burgers",
          availability: 12,
          selected: true,
        ),
        CategoryListItem(
          categoryIcon: Icons.category,
          categoryName: "Pizza",
          availability: 12,
          selected: false,
        ),
        CategoryListItem(
          categoryIcon: Icons.bug_report,
          categoryName: "Rolls",
          availability: 12,
          selected: false,
        ),
        CategoryListItem(
          categoryIcon: Icons.bug_report,
          categoryName: "Burgers",
          availability: 12,
          selected: false,
        ),
        CategoryListItem(
          categoryIcon: Icons.bug_report,
          categoryName: "Burgers",
          availability: 12,
          selected: false,
        ),
      ],
    ),
  );
}

Widget serchBar(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Icon(Icons.search,
        color: Colors.black54,
      ),
      SizedBox(width: 20,),
      Expanded(
          child: TextField(
        decoration: InputDecoration(
          hintText: 'Search...',
          contentPadding: EdgeInsets.symmetric(vertical: 10),
          helperStyle: TextStyle(
            color: Colors.black
          )
        ),
      ))
    ],
  );
}

Widget title() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Text(
        'Food',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w800,
        ),
      ),
      Text(
        'Cart',
        style: TextStyle(
          fontSize: 30,
          color: Colors.black38,
          fontWeight: FontWeight.w800,
        ),
      ),
    ],
  );
}

class FirstHalf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.fromLTRB(35, 25, 0, 0),
      child: Column(
        children: <Widget>[
          customeAppBar(),
        ],
      ),
    );
  }
}

class customeAppBar extends StatelessWidget {

  final CartListBloc bloc = BlocProvider.getBloc<CartListBloc>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(
        bottom: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(Icons.menu),
          StreamBuilder(
            stream: bloc.ListStream,
              builder: (context , snapshot){
              List<FoodItem> foodItems = snapshot.data;
              int length = foodItems != null ? foodItems.length : 0;
              return buildCestorDetector(length, context , foodItems);
              })
        ],
      ),
    );
  }
}

GestureDetector buildCestorDetector (int length ,BuildContext context , List <FoodItem> foodItems){
  return GestureDetector(
    onTap:(){
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return Cart();
      }));
    } ,
    child: Container(
      margin: EdgeInsets.only(right: 15),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.yellow[800],borderRadius: BorderRadius.circular(50)
      ),
      child: Text(length.toString()),
    ));
}
class CategoryListItem extends StatelessWidget{

  final IconData categoryIcon;
  final String categoryName;
  final int availability;
  final bool selected;

  CategoryListItem({
    @required this.categoryIcon,
    @required this.categoryName,
    @required this.availability,
    @required this.selected,

  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(right: 20),
      padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: selected ? Colors.amber : Colors.white,
        border: Border.all(
          color: selected ? Colors.transparent : Colors.grey[200],
        ),
        boxShadow:[BoxShadow(
          color: Colors.grey[100],
          blurRadius:5,
          offset: Offset(25, 0),
        )]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color:selected ?  Colors.transparent : Colors.grey,
                width: 1.5,
              ),
            ),
            child: Icon(Icons.category,
            size: 30,
            color: Colors.black,),
          ),
          SizedBox(height: 10,),
          Text(categoryName,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.black
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
            width: 1.5,
            height: 15,
            color: Colors.black38,
          ),
          Text(
            availability.toString(),
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.black
            ),
          )
        ],
      ),
    );
  }

}
