import 'package:bloc/bloc.dart';
import 'appCubitStates.dart';

class AppCubits extends Cubit<CubitStates>{
  AppCubits(): super(InitialState()){
    emit(WelcomeState());

  }
}