import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_flutter/show_image_picker.dart';

void main() {


  testWidgets("click to show text", (tester) async {
    await tester.pumpWidget(_buildTestWidget());
    expect(find.byType(BottomSheet), findsOneWidget);
    expect(find.text(kChooseFromGallery), findsOneWidget);
    expect(find.text(kTakeANewPitcure), findsOneWidget);
  });

  testWidgets("check icons", (tester) async {
    await tester.pumpWidget(_buildTestWidget());
    expect(find.byIcon(Icons.photo_camera), findsOneWidget);
    expect(find.byIcon(Icons.photo_library), findsOneWidget);
  });
}

Widget _buildTestWidget() => MaterialApp(
    home: Builder(builder: (BuildContext context) {
      return BottomSheet(
        builder: imagePickerMenu,
        onClosing: () {},
      );
    }),
  );
