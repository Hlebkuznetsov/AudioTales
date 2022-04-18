import 'package:audio_tales/blocs/registration/registration_bloc.dart';
import 'package:audio_tales/pages/other/tabs_page.dart';
import 'package:audio_tales/repositories/auth_repository.dart';
import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/routes/navigator_keys.dart';
import 'package:audio_tales/widgets/textfields/otp_textfield.dart';
import 'package:audio_tales/widgets/textfields/registration_textfield.dart';
import 'package:flutter/material.dart';
import 'package:audio_tales/widgets/containers/curved_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegistrationPage extends StatelessWidget {
  RegistrationPage({Key? key}) : super(key: key);

  static const routeName = '/auth/registration_page';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: NavigatorKeys.scaffoldKey,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(alignment: Alignment.center, children: [
                    CurvedContainer(
                      color: AppColors.purple,
                      height: 290,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Регистрация',
                          style: TextStyle(
                            fontSize: 43,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2.5,
                            color: AppColors.whiteText,
                          ),
                        ),
                      ],
                    ),
                  ]),
                  SizedBox(
                    height: 30,
                  ),
                  state is OTP ||
                          state is CheckedOTP ||
                          state is AllowedToSendChecking
                      ? Text(
                          'Введи код из смс',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.blackText,
                          ),
                        )
                      : Text(
                          'Введи номер телефона',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.blackText,
                          ),
                        ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: 294,
                    child: Material(
                      elevation: 8,
                      borderRadius: BorderRadius.circular(30),
                      child: state is OTP ||
                              state is CheckedOTP ||
                              state is AllowedToSendChecking
                          ? OTPTextField()
                          : RegistrationTextField(),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  IgnorePointer(
                    ignoring: state is! UnCorrectedPhone ? false : true,
                    child: ElevatedButton(
                      onPressed: () {
                        if (state is OTP) {
                          BlocProvider.of<RegistrationBloc>(context).add(
                              CheckOTP(
                                  otp: state.props[0].toString(),
                                  context: context));
                        } else if (state is CorrectedPhone)
                          BlocProvider.of<RegistrationBloc>(context)
                              .add(ToOTP(phone: state.props[0].toString()));
                        else if (state is AllowedToSendChecking) {
                          AuthRepository auth = AuthRepository();
                          auth.verifyCode(otp: state.otp, context: context);
                        }
                      },
                      child: Text(
                        'Продолжить',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.whiteText,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(294, 54),
                          primary: AppColors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  state is! OTP &&
                          state is! CheckedOTP &&
                          state is! AllowedToSendChecking
                      ? GestureDetector(
                          onTap: () => Navigator.of(context)
                              .pushNamedAndRemoveUntil(TabsPage.routeName,
                                  (Route<dynamic> route) => false),
                          child: Text(
                            'Позже',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: AppColors.blackText,
                            ),
                          ),
                        )
                      : Text(''),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 294,
                    height: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      elevation: 3,
                      shadowColor: Colors.white,
                      color: AppColors.background,
                      child: Align(
                        child: Text(
                          'Регистрация привяжет твои сказки \n к  облаку, после чего они всегда\n будут с тобой',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.blackText,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
