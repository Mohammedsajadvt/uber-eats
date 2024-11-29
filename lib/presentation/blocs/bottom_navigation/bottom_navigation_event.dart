part of 'bottom_navigation_bloc.dart';

abstract class BottomNavigationEvent extends Equatable {
  const BottomNavigationEvent();

  @override
  List<Object> get props => [];
}

class TabChange extends BottomNavigationEvent {
  const TabChange({required this.tabIndex});
  final int tabIndex;

  @override
  List<Object> get props => [tabIndex];
}
