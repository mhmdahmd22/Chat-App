// ignore_for_file: must_be_immutable

part of 'profile_bloc.dart';

/// Represents the state of Profile in the application.
class ProfileState extends Equatable {
  ProfileState({
    this.isSelectedSwitch = false,
    this.planetRating = false,
    this.notificationsva = false,
    this.profileModelObj,
  });

  ProfileModel? profileModelObj;

  bool isSelectedSwitch;

  bool planetRating;

  bool notificationsva;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        planetRating,
        notificationsva,
        profileModelObj,
      ];
  ProfileState copyWith({
    bool? isSelectedSwitch,
    bool? planetRating,
    bool? notificationsva,
    ProfileModel? profileModelObj,
  }) {
    return ProfileState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      planetRating: planetRating ?? this.planetRating,
      notificationsva: notificationsva ?? this.notificationsva,
      profileModelObj: profileModelObj ?? this.profileModelObj,
    );
  }
}
