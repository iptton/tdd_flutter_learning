import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_flutter/show_image_picker.dart';

void main() {
  testWidgets("click to show text", (tester) async {
    await tester.pumpWidget(Builder(builder: (BuildContext context) {
      return MaterialApp(
        builder: (context, child) {
          return showImagePickerBottomSheet(context);
        },
      );
    }));

    expect(find.byType(BottomSheet), findsOneWidget);
    expect(find.text("Choose from gallery"), findsOneWidget);
    expect(find.text("Take a new picture"), findsOneWidget);
  });
}
