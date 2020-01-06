import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const kChooseFromGallery = "Choose from gallery";
const kTakeANewPitcure = "Take a new picture";
Widget imagePickerMenu(BuildContext context) {
  return Container(
    height: 255,
    color: Colors.green[900],
    child: ListView(
      children: [
        ListTile(
          leading: Icon(Icons.photo_library),
          title: Text(kChooseFromGallery),
          onTap: () {
            Navigator.pop(context, 12);
          },
        ),
        ListTile(
          leading: Icon(Icons.photo_camera),
          title: Text(kTakeANewPitcure),
        ),
      ],
    ),
  );
}
