// ignore_for_file: must_be_immutable

part of 'inner_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InnerPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InnerPageEvent extends Equatable {}

/// Event that is dispatched when the InnerPage widget is first created.
class InnerPageInitialEvent extends InnerPageEvent {
  @override
  List<Object?> get props => [];
}
