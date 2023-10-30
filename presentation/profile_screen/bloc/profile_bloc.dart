import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mohamed_s_application1/presentation/profile_screen/models/profile_model.dart';
part 'profile_event.dart';
part 'profile_state.dart';

/// A bloc that manages the state of a Profile according to the event that is dispatched to it.
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(ProfileState initialState) : super(initialState) {
    on<ProfileInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeCheckBox1Event>(_changeCheckBox1);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<ProfileState> emit,
  ) {
    emit(state.copyWith(isSelectedSwitch: event.value));
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<ProfileState> emit,
  ) {
    emit(state.copyWith(planetRating: event.value));
  }

  _changeCheckBox1(
    ChangeCheckBox1Event event,
    Emitter<ProfileState> emit,
  ) {
    emit(state.copyWith(notificationsva: event.value));
  }

  _onInitialize(
    ProfileInitialEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(
        isSelectedSwitch: false, planetRating: false, notificationsva: false));
  }
}
