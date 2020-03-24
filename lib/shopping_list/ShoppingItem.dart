import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:household_utility/shopping_list/ShoppingList.dart';

import 'ShoppingUnit.dart';
import 'StoreCategory.dart';

class ShoppingItem {
  String name;
  int amount; 
  ShoppingUnit unit;
  StoreCategory store;

  ShoppingItem(this.name, { this.amount=1, this.unit=ShoppingUnit.None, this.store});
}

class ShoppingItemWidget extends StatelessWidget {

  final ShoppingItem _item;

  ShoppingItemWidget(this._item);

  @override 
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.create),
      title: Text(_item.name,
        style: Theme.of(context).textTheme.headline6),
      trailing: 
      Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(_item.amount.toString(),
            style: Theme.of(context).textTheme.subtitle1),
          Text(" kg")
      ],
      )
    );
  }
}