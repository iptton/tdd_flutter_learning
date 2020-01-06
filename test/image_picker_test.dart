import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_flutter/show_image_picker.dart';

void main() {
  testWidgets("click to show text", (tester) async {
    await tester.pumpWidget(Builder(builder: (BuildContext context) {
      return MaterialApp(
        builder: (context, child) {
          return imagePickerMenu(context);
        },
      );
    }));

    expect(find.byType(BottomSheet), findsOneWidget);
    expect(find.text(kChooseFromGallery), findsOneWidget);
    expect(find.text(kTakeANewPitcure), findsOneWidget);
  });

  testWidgets("check icons", (tester) async {
    await tester.pumpWidget(
      Builder(
        builder: (ctx) => MaterialApp(
          builder: (ctx, child) {
            return imagePickerMenu(ctx);
          },
        ),
      ),
    );

    expect(find.byIcon(Icons.photo_camera), findsOneWidget);
    expect(find.byIcon(Icons.photo_library), findsOneWidget);
  });
}
