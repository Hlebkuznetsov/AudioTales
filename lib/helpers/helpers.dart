import 'package:audio_tales/blocs/registration/registration_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void getStates(context) {
  BlocProvider.of<RegistrationBloc>(context).stream.listen((event) {
    print('Reg state :   $event');
  });
}

String cleanPhoneNumber({required String phone}) {
  final phoneNumber = phone.replaceAll(RegExp('[ ()]'), '').trim();
  return phoneNumber;
}
