import 'package:flutter/material.dart';
import 'package:flutter_push/main.dart';
import 'package:flutter_test/flutter_test.dart';

///
/// 6. Изменить местоположение элементов на экране
///    Изменим местоположение верхнего блока с текстом и нижней кнопки
///    (2 балла - обязательное)
///
/// - Верхний виджет должен быть: по горизонтали — по центру, по вертикали —
///   отступать на 10% сверху от высоты экрана
/// - Нижний виджет должен быть: по горизонтали — по центру, по вертикали —
///   отступать на 10% снизу от высоты экрана
///
void runTestLesson1Task6() {
  testWidgets('module6', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    final List<Stack> stackWidgets =
        tester.widgetList<Stack>(find.byWidgetPredicate((widget) => widget is Stack)).toList();
    final Stack? stackWithThreeWidgets =
        stackWidgets.firstWhere((stack) => stack.children.length == 3);
    expect(stackWithThreeWidgets, isNotNull);
    final Widget? topWidget = stackWithThreeWidgets!.children
        .firstWhere((element) => element is Align && element.alignment == const Alignment(0, -0.8));
    expect(topWidget, isNotNull);
    final Widget? bottomWidget = stackWithThreeWidgets.children
        .firstWhere((element) => element is Align && element.alignment == const Alignment(0, 0.8));
    expect(bottomWidget, isNotNull);
  });
}
