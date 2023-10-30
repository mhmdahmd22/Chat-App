import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/iconblock_item_model.dart';
import 'package:mohamed_s_application1/presentation/inner_page_screen/models/inner_page_model.dart';
part 'inner_page_event.dart';
part 'inner_page_state.dart';

/// A bloc that manages the state of a InnerPage according to the event that is dispatched to it.
class InnerPageBloc extends Bloc<InnerPageEvent, InnerPageState> {
  InnerPageBloc(InnerPageState initialState) : super(initialState) {
    on<InnerPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InnerPageInitialEvent event,
    Emitter<InnerPageState> emit,
  ) async {
    emit(state.copyWith(
        innerPageModelObj: state.innerPageModelObj
            ?.copyWith(iconblockItemList: fillIconblockItemList())));
  }

  List<IconblockItemModel> fillIconblockItemList() {
    return List.generate(3, (index) => IconblockItemModel());
  }
}
