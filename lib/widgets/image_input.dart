import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageInput extends StatefulWidget {
  const ImageInput({Key? key}) : super(key: key);

  @override
  State<ImageInput> createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  File? storedImage;

  Future<void> pickImage() async {
    try {
      final imagePicked =
          await ImagePicker().pickImage(source: ImageSource.gallery);
      setState(() {
        storedImage = File(imagePicked!.path);
      });
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
    }
  }

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
            child: storedImage == null
                ? const Center(child: Text("No Image Seleted"))
                : Image.file(
                    storedImage!,
                    fit: BoxFit.cover,
                  ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: TextButton.icon(
              onPressed: pickImage,
              style: TextButton.styleFrom(
                primary: Colors.black,
              ),
              icon: const Icon(CupertinoIcons.camera),
              label: const Text("Take Picture"),
            ),
          ),
        ],
      ),
    );
  }
}
