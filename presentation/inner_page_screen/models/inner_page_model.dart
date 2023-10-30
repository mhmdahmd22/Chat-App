// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'iconblock_item_model.dart';

/// This class defines the variables used in the [inner_page_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InnerPageModel extends Equatable {
  InnerPageModel({this.iconblockItemList = const []}) {}

  List<IconblockItemModel> iconblockItemList;

  InnerPageModel copyWith({List<IconblockItemModel>? iconblockItemList}) {
    return InnerPageModel(
      iconblockItemList: iconblockItemList ?? this.iconblockItemList,
    );
  }

  @override
  List<Object?> get props => [iconblockItemList];
}
