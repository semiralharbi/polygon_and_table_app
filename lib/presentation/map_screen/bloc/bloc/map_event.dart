import 'package:equatable/equatable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

abstract class MapEvent extends Equatable {
  const MapEvent();

  @override
  List<Object?> get props => [];
}

class MapInitialized extends MapEvent {
  final GoogleMapController controller;

  const MapInitialized(this.controller);

  @override
  List<Object?> get props => [controller];
}

class LocationUpdated extends MapEvent {
  final LatLng location;

  const LocationUpdated(this.location);

  @override
  List<Object?> get props => [location];
}

class PolygonPointAdded extends MapEvent {
  final LatLng point;

  const PolygonPointAdded(this.point);

  @override
  List<Object?> get props => [point];
}

class LastPointUndone extends MapEvent {}

class PolygonCleared extends MapEvent {}

class PolygonSaved extends MapEvent {}
