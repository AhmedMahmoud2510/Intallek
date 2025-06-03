part of 'location_cubit.dart';

abstract class LocationState {}

class LocationInitial extends LocationState {}

class LocationLoading extends LocationState {}

class LocationLoaded extends LocationState {
  LocationLoaded(this.position);
  final Position position;
}

class LocationError extends LocationState {
  LocationError(this.message);
  final String message;
}
