import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'platform/app_observer_io.dart'
    if (dart.library.html) 'platform/app_observer_web.dart';

void initializeBloc() {
  Bloc.observer = getObserver();
  Bloc.transformer = sequential<Object?>();
}
