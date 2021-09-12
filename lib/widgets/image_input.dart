import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageInput extends StatefulWidget {
  const ImageInput({Key? key}) : super(key: key);

  @override
  State<ImageInput> createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  File? storedImage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 3.0,
        top: 8,
      ),
      child: Row(
        children: [
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width * 0.5,
            decoration: BoxDecoration(
              color: Colors.grey[200],
            ),
            child: Center(
              child: storedImage == null
                  ? const Text("No Image Seleted")
                  : Image.file(storedImage!, fit: BoxFit.cover,),
            ),
          ),
          Expanded(
            child: TextButton.icon(
              onPressed: () {},
              style: TextButton.styleFrom(
                primary: Colors.black,
              ),
              icon: const Icon(CupertinoIcons.camera),
              label: const Text("Select Image"),
            ),
          ),
        ],
      ),
    );
  }
}
