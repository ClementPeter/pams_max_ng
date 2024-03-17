import 'package:flutter_test/flutter_test.dart';
import 'package:pams_max_ng/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('FunnelViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
