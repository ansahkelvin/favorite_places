import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'add_place.dart';

class PlaceList extends StatelessWidget {
  const PlaceList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          CupertinoIcons.star,
          color: Colors.orange,
        ),
        backgroundColor: Colors.white,
        actionsIconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        title: const Text(
          "Favorite Place",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, AddPlace.routeName);
            },
            icon: const Icon(
              CupertinoIcons.add,
            ),
          ),
        ],
      ),
      body: const Center(
        child: Text("No favorite place taken"),
      ),
    );
  }
}
