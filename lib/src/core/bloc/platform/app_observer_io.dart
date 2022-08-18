import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:l/l.dart';

BlocObserver getObserver() => AppObserverIO();

class AppObserverIO extends BlocObserver {
  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    //TODO: add more logging
    l.e(error, stackTrace);
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    l.v(transition);
    super.onTransition(bloc, transition);
  }
}
