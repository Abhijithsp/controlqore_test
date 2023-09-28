part of 'splash_cubit.dart';

@immutable
abstract class SplashState {}

class SplashInitial extends SplashState {}

class NavigateState extends SplashState{}

class loadLoginScreen extends SplashState{}

class LoadHomeScreen extends SplashState{}