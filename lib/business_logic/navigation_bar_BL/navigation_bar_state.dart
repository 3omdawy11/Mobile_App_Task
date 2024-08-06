part of 'navigation_bar_bloc.dart';

@immutable
abstract class NavigationBarState {
  late int tabIndex;
  NavigationBarState({required this.tabIndex});
}

class NavigationBarInitial extends NavigationBarState {
  NavigationBarInitial({required super.tabIndex});
}
