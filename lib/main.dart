import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//Library Imports
import 'screens/place_list.dart';
import './provider/user_places.dart';
import './screens/add_place.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserPlaces(),
      child: MaterialApp(
        title: 'Favorite places',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: const PlaceList(),
        routes: {
          AddPlace.routeName: (BuildContext context) => const AddPlace(),
        },
      ),
    );
  }
}
