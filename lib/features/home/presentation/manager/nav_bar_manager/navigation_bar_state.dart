part of 'navigation_bar_cubit.dart';

@immutable
abstract class NavigationBarState {}

class NavigationBarInitial extends NavigationBarState {}

class UpdateNavigationBar extends NavigationBarState {
  final int index;

  UpdateNavigationBar({required this.index});
}
