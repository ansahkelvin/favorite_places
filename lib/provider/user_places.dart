import 'package:flutter/material.dart';

import '../models/places.dart';

class UserPlaces extends ChangeNotifier {
  final List<Place> _items = [];

  List<Place> get items => [..._items];
}
