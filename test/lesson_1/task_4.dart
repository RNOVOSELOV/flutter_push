import 'package:flutter/material.dart';
import 'package:flutter_push/main.dart';
import 'package:flutter_test/flutter_test.dart';

///
/// 4. Стилизовать центральный текст
///    Стилизуем текстовый элемент в центре (с миллисекундами)
///    (1 балл - обязательное)
///
/// - Размер шрифта 36
/// - Цвет белый
/// - Толщину шрифта — Medium
///
void runTestLesson1Task4() {
  testWidgets('module4', (WidgetTester tester) async {
    const TextStyle correctStyle =
    const TextStyle(fontSize: 36, fontWeight: FontWeight.w500, color: Colors.white);
    await tester.pumpWidget(MyApp());
    final Text? text = tester
        .firstWidget(find.byWidgetPredicate((widget) => widget is Text && widget.data == ""));
    expect(text, isNotNull);
    expect(text!.style, correctStyle);
  });
}
