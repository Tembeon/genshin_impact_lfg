import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:stack_trace/stack_trace.dart';

import 'runner_stub.dart'
    if (dart.library.io) 'runner_io.dart'
    if (dart.library.html) 'runner_web.dart' as runner;

void main() {
  runZonedGuarded(
    () => runner.run,
    (error, stack) {
      debugPrint(Trace.format(stack));
    },
  );
}
