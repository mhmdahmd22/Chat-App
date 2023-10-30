import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/favourites_item_model.dart';
import 'package:mohamed_s_application1/presentation/favourites_page/models/favourites_model.dart';
part 'favourites_event.dart';
part 'favourites_state.dart';

/// A bloc that manages the state of a Favourites according to the event that is dispatched to it.
class FavouritesBloc extends Bloc<FavouritesEvent, FavouritesState> {
  FavouritesBloc(FavouritesState initialState) : super(initialState) {
    on<FavouritesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FavouritesInitialEvent event,
    Emitter<FavouritesState> emit,
  ) async {
    emit(state.copyWith(
        favouritesModelObj: state.favouritesModelObj?.copyWith(
      favouritesItemList: fillFavouritesItemList(),
    )));
  }

  List<FavouritesItemModel> fillFavouritesItemList() {
    return List.generate(4, (index) => FavouritesItemModel());
  }
}
