import 'package:flutter_test/flutter_test.dart';
import 'package:plantas_app/main.dart';

void main() {
  testWidgets('La app muestra el titulo Mi Jardin', (tester) async {
    await tester.pumpWidget(const MiJardinApp());
    expect(find.text('Mi Jardín'), findsOneWidget);
  });
}