part of 'location_cubit.dart';

sealed class LocationState {}

final class LocationInitial extends LocationState {}

final class LocationLoading extends LocationState {}

final class LocationLoaded extends LocationState {
  LocationLoaded(this.position, {this.selectedLocation});
  final Position position;
  final LatLng? selectedLocation;
}

final class LocationError extends LocationState {
  LocationError(this.error);
  final String error;
}

class LocationSuggestionsUpdated extends LocationState {
  LocationSuggestionsUpdated(this.suggestions);
  final List<String> suggestions;
}
