import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_code/main.dart';

void main() {
  testWidgets('App boots with ShortWebseriesApp', (WidgetTester tester) async {
    await tester.pumpWidget(const ShortWebseriesApp());
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}

