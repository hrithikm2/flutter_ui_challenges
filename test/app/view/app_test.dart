import 'package:draggable/app/app.dart';
import 'package:draggable/share/share.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(App());
      expect(find.byType(SharePage), findsOneWidget);
    });
  });
}
