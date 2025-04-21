import 'package:flutter/material.dart';
import 'package:myapp/UI/_core/bag_provider.dart';
import 'package:provider/provider.dart';
import 'package:badges/badges.dart' as badges;

AppBar getAppBar({required BuildContext context, String? title,}){
  BagProvider bagprovider = Provider.of<BagProvider>(context);
  return AppBar(
    title: title != null ? Text(title) : null,
    centerTitle: true,
    actions: [
      badges.Badge(
        showBadge: bagprovider.dishesOnBag.isNotEmpty,
        position: badges.BadgePosition.bottomStart(start: 0, bottom: 0),
        badgeContent: Text(
          bagprovider.dishesOnBag.length.toString(), 
          style: TextStyle(fontSize: 10.0),
        ),
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_basket),
        ),
      )
    ]
  );
}
