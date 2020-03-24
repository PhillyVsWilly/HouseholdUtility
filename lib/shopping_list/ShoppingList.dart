import 'package:flutter/cupertino.dart';
import 'package:household_utility/shopping_list/ShoppingListPage.dart';

import 'ShoppingItem.dart';

class ShoppingList {
  List<ShoppingItem> items;


}

class ShoppingListWidget extends StatelessWidget {
  ShoppingList _shoppingList;

  ShoppingListWidget(this._shoppingList);

  @override 
  Widget build(BuildContext context) {
    return ListView(
      children: 
        this._shoppingList.items.map((item) => new ShoppingItemWidget(item)).toList(),
      );
  }
}