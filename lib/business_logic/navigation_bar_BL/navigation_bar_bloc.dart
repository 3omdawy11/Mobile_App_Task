import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'navigation_bar_event.dart';
part 'navigation_bar_state.dart';

class NavigationBarBloc extends Bloc<NavigationBarEvent, NavigationBarState> {
  NavigationBarBloc() : super(NavigationBarInitial(tabIndex: 0)) {
    on<NavigationBarEvent>((event, emit) {
      if (event is TabChange) {
        emit(NavigationBarInitial(tabIndex: event.tabIndex));
      }
    });
  }
}
