import 'package:flutter/material.dart';
import 'package:flutter_push/main.dart';
import 'package:flutter_test/flutter_test.dart';

///
/// 2. Стилизовать верхний текст
///    Стилизуем верхний текстовый блок c текстом "Test your reaction speed"
///    (1 балл — обязательное)
///
/// - Шрифт сделать белым
/// - Тощину шрифта Black
/// - Размер шрифта 38
/// - Равнение самого текста по центру виджета
///
void runTestLesson1Task2() {
  testWidgets('module2', (WidgetTester tester) async {
    const TextStyle correctStyle =
        const TextStyle(fontSize: 38, fontWeight: FontWeight.w900, color: Colors.white);
    await tester.pumpWidget(MyApp());
    expect((tester.firstWidget(find.textContaining("Test your")) as Text).style, correctStyle);
    expect(
        (tester.firstWidget(find.textContaining("Test your")) as Text).textAlign, TextAlign.center);
  });
}
