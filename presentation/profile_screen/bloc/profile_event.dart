// ignore_for_file: must_be_immutable

part of 'profile_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Profile widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileEvent extends Equatable {}

/// Event that is dispatched when the Profile widget is first created.
class ProfileInitialEvent extends ProfileEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends ProfileEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends ProfileEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox1Event extends ProfileEvent {
  ChangeCheckBox1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
