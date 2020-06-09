import 'package:flutter/material.dart';
import 'package:tourism/app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('List of locations loads.', (WidgetTester tester) async {
    // final locations = Location.fetchAll();

    await tester.pumpWidget(App());
    // await tester.pump(new Duration(milliseconds: 500));
    // expect(find.text(locations[0].name), findsOneWidget);
    expect(find.byWidget(ListView()), findsOneWidget);
  });
}
