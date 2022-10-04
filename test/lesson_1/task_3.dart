import 'package:flutter/material.dart';
import 'package:flutter_push/main.dart';
import 'package:flutter_test/flutter_test.dart';

///
/// 3. Изменить цвет центрального элемента
///    Изменяем цвет центрального элемента-прямоугольника, который служит
///    подложкой под текст с миллисекундами
///    (1 балл - обязательное)
///
/// - Цвет подложки сделать FF6D6D6D
///
void runTestLesson1Task3() {
  testWidgets('module3', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    final List<Stack> stackWidgets =
        tester.widgetList<Stack>(find.byWidgetPredicate((widget) => widget is Stack)).toList();
    final Stack? stackWithThreeWidgets =
        stackWidgets.firstWhere((stack) => stack.children.length == 3);
    expect(stackWithThreeWidgets, isNotNull);
    final Widget? centeredWidget = stackWithThreeWidgets!.children.firstWhere((element) =>
        (element is Align && element.alignment == Alignment.center) || element is Center);
    expect(centeredWidget, isNotNull);
    expect(centeredWidget, isInstanceOf<Align>());
    expect((centeredWidget as Align).child, isInstanceOf<ColoredBox>());
    final ColoredBox coloredBox = centeredWidget.child as ColoredBox;
    expect(coloredBox.color, const Color(0xFF6D6D6D));
  });
}
