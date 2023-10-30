// ignore_for_file: must_be_immutable

part of 'favourites_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Favourites widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FavouritesEvent extends Equatable {}

/// Event that is dispatched when the Favourites widget is first created.
class FavouritesInitialEvent extends FavouritesEvent {
  @override
  List<Object?> get props => [];
}
