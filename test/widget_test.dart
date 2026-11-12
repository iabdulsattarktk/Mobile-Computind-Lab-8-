import 'package:flutter_test/flutter_test.dart';
import 'package:campus_hub/app.dart';

void main() {
  testWidgets('Campus Hub app builds and shows splash', (tester) async {
    await tester.pumpWidget(const CampusHubApp());
    await tester.pump();
    expect(find.text('Campus Hub'), findsOneWidget);
  });
}
