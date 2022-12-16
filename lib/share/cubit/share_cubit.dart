import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);
  TextEditingController controller = TextEditingController();

  void send(String text) {
    Share.share(text);
  }

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}
