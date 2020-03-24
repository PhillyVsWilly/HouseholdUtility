import 'package:flutter/material.dart';
import 'package:household_utility/shopping_list/ShoppingItem.dart';

import 'ShoppingList.dart';

class ShoppingListPage extends StatelessWidget {

  ShoppingList list;

  ShoppingListPage() {
    list = ShoppingList();
    var names = {"Eier", "Salz", "Zucker", "Schmalz", "Milch", "Mehl","Safran"};
    list.items = names.map((name) => ShoppingItem(name)).toList(); 
    list.items.addAll(List.from(list.items));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Einkaufsliste",
        style: Theme.of(context).textTheme.headline5,),
      ),
      body: 
      Center(
        child: ShoppingListWidget(list)
        ),  
    );
  }
  
}