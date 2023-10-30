// ignore_for_file: must_be_immutable

part of 'inner_page_bloc.dart';

/// Represents the state of InnerPage in the application.
class InnerPageState extends Equatable {
  InnerPageState({this.innerPageModelObj});

  InnerPageModel? innerPageModelObj;

  @override
  List<Object?> get props => [
        innerPageModelObj,
      ];
  InnerPageState copyWith({InnerPageModel? innerPageModelObj}) {
    return InnerPageState(
      innerPageModelObj: innerPageModelObj ?? this.innerPageModelObj,
    );
  }
}
