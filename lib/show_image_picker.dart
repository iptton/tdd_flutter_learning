import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget showImagePickerBottomSheet(BuildContext context) {
  return BottomSheet(
    builder: (context) {
      return Row(children: [
        Text("Choose from gallery"),
        Text("Take a new picture"),
      ]);
    },
    onClosing: () {},
  );
}
