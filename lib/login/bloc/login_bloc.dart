import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<int> {
  LoginCubit(super.initialState);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
}
