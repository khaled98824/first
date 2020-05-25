import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:com/bloc/cartListBloc.dart';
import 'package:com/model/foodItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Cart extends StatelessWidget{
  final CartListBloc bloc = BlocProvider.getBloc<CartListBloc>();
  @override
  Widget build(BuildContext context) {

    List <FoodItem> foodItems;
    // TODO: implement build
    return StreamBuilder(
      stream:bloc.ListStream ,
      builder: (context,snapshot){
        if (snapshot.data != null){
          foodItems = snapshot.data;
          return Scaffold(
            body: SafeArea(
                child:Container(
              child: CartBody(foodItems),
            )
            ),
            bottomNavigationBar: BottomBar(foodItems),
          );
        }else{
          return Container();
        }
      },
    );
  }

}

class BottomBar extends StatelessWidget{
  final List<FoodItem> foodItems;
  BottomBar(this.foodItems);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(left: 34,bottom: 24),
      child: Column(
      mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          totalAmount(foodItems),
          Divider(
            height: 1,
            color: Colors.grey[800],
          ),
          persons(),
          nextButtonBar()
        ],
      ),

    );
  }

  Container nextButtonBar(){
    return Container(
      margin: EdgeInsets.only(right: 24),
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(15),
      ),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('15-25 min',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w900,
          ),),
          Text('Next',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 17,
          ),
          )

        ],
      ),
    );
  }

  Container persons(){
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("Persons",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700
          ),
          ),
          CustomPersonWidget()
        ],
      ),
    );
  }
  Container totalAmount(List<FoodItem> foodItem){
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(24),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("Total",
            style:TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w300
            ) ,),

          Text("\$${returnTotalAmount(foodItem)}",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 26,
          ),)

        ],
      ) ,
    );
  }

  String returnTotalAmount(List<FoodItem> foodItem){
    double totalAmount = 0 ;

    for(int i =0 ; i <foodItem.length; i++){
      totalAmount = totalAmount + foodItem [i].price * foodItem[i].quantity;
    }
    return totalAmount.toStringAsFixed(2);
  }
}

class CustomPersonWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CustomPersonWidget();
  }

}

class _CustomPersonWidget extends State<CustomPersonWidget>{
  int noOfPersons =1 ;
  double buttonWidth = 30 ;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin:  EdgeInsets.only(right: 24,),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300],width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.symmetric(vertical: 5),
      width: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SizedBox(
            width: buttonWidth,
            height: buttonWidth,
            child: FlatButton(
              child: Text("-",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20
              ),
              ),
              onPressed: (){
                setState(() {
                  noOfPersons --;
                });
              },
            ),
          ),
          Text(
            noOfPersons.toString(),
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20
            ),
          ),
          SizedBox(
            width: buttonWidth,
            height: buttonWidth,
            child: FlatButton(
              child: Text("+",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20
                ),
              ),
              onPressed: (){
                setState(() {
                  noOfPersons ++;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

}

class CartBody extends StatelessWidget{
  final List<FoodItem> foodItems;
  CartBody(this.foodItems);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.fromLTRB(35, 40, 25, 0),
      child:Column(
        children: <Widget>[
          CustomAppBar(),
          title(),
          Expanded(
            flex: 1,
            child: foodItems.length > 0 ? foodItemList() : noItemsContainer(),
          )
        ],
      ) ,
    );
  }

  ListView foodItemList (){
    return ListView.builder(
      itemCount: foodItems.length,
        itemBuilder: (builder,index){
        return CartListItem(foodItem:foodItems[index]);
        });
  }
  Container noItemsContainer (){
    return Container(
      child: Center(
        child: Text("No More Items",
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: Colors.grey,
          fontSize: 20
        ),
        ),
      ),
    );
  }
  Widget title(){
    return Padding(padding: EdgeInsets.symmetric(vertical: 35),
    child: Row(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("My",
            style: TextStyle(fontSize: 33,fontWeight: FontWeight.w800),),
            Text("Order",
              style: TextStyle(fontSize: 33,fontWeight: FontWeight.w800),)
          ],
        )
      ],
    ),
    );
  }

}

class CartListItem extends StatelessWidget{
  final FoodItem foodItem;
  CartListItem({@required this.foodItem});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(bottom: 26,),
      child: ItemContant(foodItem: foodItem),
    );
  }

}
class ItemContant extends StatelessWidget{

   final FoodItem foodItem;
   ItemContant({@required this.foodItem});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.network(
              foodItem.imgUrl,
              fit: BoxFit.fitHeight,
              height: 55,
              width: 80,
            ),
          ),
          RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight:FontWeight.w700,
                ),
                children: [
                  TextSpan(text: foodItem.quantity.toString()),
                  TextSpan(text: "X"),
                  TextSpan(text: foodItem.title)
                ]
              )
          ),
          Text(
            "\$${foodItem.quantity * foodItem.price}",
            style: TextStyle(color: Colors.grey[400],
            fontWeight: FontWeight.w400
            ),
          )
        ],
      ),
    );
  }

}
class CustomAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
            padding: EdgeInsets.all(5),
          child: GestureDetector(
            child: Icon(
                CupertinoIcons.back,
            size: 30,
            ),
            onTap: (){Navigator.pop(context);}
          ),
        ),
        GestureDetector(
          child: Padding(padding: EdgeInsets.all(5),
          child: Icon(CupertinoIcons.delete,
            size: 33,
          ),
          ),
          onTap: (){

          },
        )
      ],
    );
  }

}