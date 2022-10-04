


import 'package:flutter/material.dart';
import 'package:flutter_push/main.dart';
import 'package:flutter_test/flutter_test.dart';

///
/// 1. Обновить цвет страницы
///    Заменяем цвет страницы на темный
///    (1 балл, обязательное)
///
/// Заменить цвет бекграунда страницы на 0xFF282E3D
///
void runTestLesson1Task1() {
  testWidgets('module1', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(
      (tester.firstWidget(find.byType(Scaffold)) as Scaffold).backgroundColor,
      const Color(0xFF282E3D),
    );
  });
}