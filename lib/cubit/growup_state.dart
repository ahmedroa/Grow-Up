part of 'growup_cubit.dart';

@immutable
sealed class GrowupState {}

final class GrowupInitial extends GrowupState {}

final class Loading extends GrowupState {}

final class LoginSuccessful extends GrowupState {}

class LogoutFailed extends GrowupState {
  final String error;

  LogoutFailed({required this.error});
}
