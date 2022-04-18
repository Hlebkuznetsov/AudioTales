part of 'registration_bloc.dart';

abstract class RegistrationEvent extends Equatable {
  const RegistrationEvent();

  @override
  List<Object> get props => [];
}

class PhoneLength extends RegistrationEvent {
  PhoneLength({
    required this.phone,
  });

  final String phone;

  @override
  List<Object> get props => [phone];
}

class ToOTP extends RegistrationEvent {
  ToOTP({
    required this.phone,
  });
  final String phone;

  @override
  List<Object> get props => [phone];
}

class CheckOTP extends RegistrationEvent {
  CheckOTP({
    required this.otp,
    required this.context,
  });
  final String otp;
  final BuildContext context;

  @override
  List<Object> get props => [otp];
}

class TryCheckOTP extends RegistrationEvent {
  TryCheckOTP({
    required this.otp,
  });
  final String otp;

  @override
  List<Object> get props => [otp];
}

class LoggedIn extends RegistrationEvent {}
