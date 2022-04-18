import 'package:audio_tales/repositories/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
part 'registration_event.dart';
part 'registration_state.dart';

final AuthRepository _auth = AuthRepository();

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  RegistrationBloc() : super(UnCorrectedPhone()) {
    on<PhoneLength>(_isCorrectPhone);
    on<ToOTP>(_toOTP);
    on<CheckOTP>(_checkOTP);
    on<TryCheckOTP>(_tryCheckOTP);
    on<LoggedIn>(_loggedIn);
  }
}

void _isCorrectPhone(RegistrationEvent event, Emitter<RegistrationState> emit) {
  if (event is PhoneLength) {
    event.phone.length < 19
        ? emit(UnCorrectedPhone())
        : emit(CorrectedPhone(phone: event.phone));
  }
}

void _toOTP(RegistrationEvent event, Emitter<RegistrationState> emit) {
  if (event is ToOTP) {
    _auth.verifyPhone(event.phone);
    emit(OTP(phone: event.phone));
  }
}

void _tryCheckOTP(RegistrationEvent event, Emitter<RegistrationState> emit) {
  if (event is TryCheckOTP) {
    emit(AllowedToSendChecking(otp: event.otp));
  }
}

void _checkOTP(RegistrationEvent event, Emitter<RegistrationState> emit) async {
  if (event is CheckOTP) {
    _auth.verifyCode(otp: event.otp, context: event.context);
    emit(CheckedOTP());
  }
}

void _loggedIn(RegistrationEvent event, Emitter<RegistrationState> emit) {
  if (event is LoggedIn) {
    emit(UnCorrectedPhone());
  }
}
