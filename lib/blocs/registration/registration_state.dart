part of 'registration_bloc.dart';

abstract class RegistrationState extends Equatable {
  const RegistrationState();

  @override
  List<Object> get props => [];
}

class CorrectedPhone extends RegistrationState {
  CorrectedPhone({required this.phone});
  final String phone;

  @override
  List<Object> get props => [phone];
}

class UnCorrectedPhone extends RegistrationState {}

class OTP extends RegistrationState {
  OTP({required this.phone});
  final String phone;

  @override
  List<Object> get props => [phone];
}

class CheckedOTP extends RegistrationState {}

class AllowedToSendChecking extends RegistrationState {
  AllowedToSendChecking({required this.otp});
  final String otp;

  @override
  List<Object> get props => [otp];
}
