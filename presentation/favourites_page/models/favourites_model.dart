// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'favourites_item_model.dart';

/// This class defines the variables used in the [favourites_page],
/// and is typically used to hold data that is passed between different parts of the application.
class FavouritesModel extends Equatable {
  FavouritesModel({this.favouritesItemList = const []}) {}

  List<FavouritesItemModel> favouritesItemList;

  FavouritesModel copyWith({List<FavouritesItemModel>? favouritesItemList}) {
    return FavouritesModel(
      favouritesItemList: favouritesItemList ?? this.favouritesItemList,
    );
  }

  @override
  List<Object?> get props => [favouritesItemList];
}
