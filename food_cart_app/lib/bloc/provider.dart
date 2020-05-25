import 'package:com/model/foodItem.dart';

class CardProvider {
  List<FoodItem> foodItems = [];

  List<FoodItem> addToList (FoodItem foodItem){
    bool isPresent = false;

    if (foodItems.length>0){
      for (int i = 0; i < foodItems.length; i ++){
        if(foodItems[i].id == foodItem.id){
          increseItemQuantity(foodItem);
          isPresent =true ;
          break ;

        }else{
          isPresent =false;
        }
      }
      if(!isPresent){
        foodItems.add(foodItem);
      }
    }else{
      foodItems.add(foodItem);
    }
    return foodItems ;
  }

  List<FoodItem> removeFromList(FoodItem foodItem){
    foodItems.remove(foodItem);
    return foodItems;
  }
  void increseItemQuantity (FoodItem foodItem)=> foodItem.incrementQuantity();
  void decreseItemQuantity (FoodItem foodItem)=> foodItem.decrementQuantity();


}