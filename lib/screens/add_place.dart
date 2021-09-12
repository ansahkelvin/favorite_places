import 'package:flutter/material.dart';

import '../widgets/image_input.dart';

class AddPlace extends StatefulWidget {
  const AddPlace({Key? key}) : super(key: key);
  static const routeName = '/addPlace';

  @override
  _AddPlaceState createState() => _AddPlaceState();
}

class _AddPlaceState extends State<AddPlace> {
  final TextEditingController titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Add a New Place",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        actionsIconTheme: const IconThemeData(color: Colors.black,),
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller: titleController,
                      decoration: const InputDecoration(
                        labelText: "Place Name",
                      ),
                    ),
                    const ImageInput()
                  ],
                ),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 0, tapTargetSize: MaterialTapTargetSize.shrinkWrap),
            onPressed: () {},
            child: const Text("Add Place"),
          ),
        ],
      ),
    );
  }
}
