import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlaceList extends StatelessWidget {
  const PlaceList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Places"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.add,
            ),
          ),
        ],
      ),
    );
  }
}
