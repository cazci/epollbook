part of 'app_bloc.dart';

@immutable
abstract class AppState {}

class AppInitial extends AppState {}

class AppLoading extends AppState {}

class AppMetaLoaded extends AppState {
  final List<Info> meta;

  AppMetaLoaded({this.meta});
}

class AppElectorsLoaded extends AppState {
  final List<Elector> all;
  final List<Elector> inQueue;

  AppElectorsLoaded({this.all, this.inQueue});
}

class AppError extends AppState {
  final String error;
  AppError(this.error);
}