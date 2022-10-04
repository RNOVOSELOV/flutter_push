import 'package:flutter/material.dart';
import 'package:flutter_push/main.dart';
import 'package:flutter_test/flutter_test.dart';

///
/// 5. Стилизовать нижний текст
///    Стилизуем текстовый элемент внизу экрана ("START", "WAIT", "STOP")
///    (1 балл - обязательное)
///
/// - Размер шрифта 38
/// - Цвет белый
/// - Толщину шрифта — Black
///
void runTestLesson1Task5() {
  testWidgets('module5', (WidgetTester tester) async {
    const TextStyle correctStyle =
        const TextStyle(fontSize: 38, fontWeight: FontWeight.w900, color: Colors.white);
    await tester.pumpWidget(MyApp());
    final Text? text = tester
        .firstWidget(find.byWidgetPredicate((widget) => widget is Text && widget.data == "START"));
    expect(text, isNotNull);
    expect(text!.style, correctStyle);
  });
}
