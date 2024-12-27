import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:polygon_map_app/presentation/map_screen/bloc/bloc/map_event.dart';
import 'package:polygon_map_app/presentation/map_screen/bloc/bloc/map_state.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  MapBloc() : super(const MapState.initial()) {
    on<MapInitialized>(_onMapInitialized);
    on<LocationUpdated>(_onLocationUpdated);
    on<PolygonPointAdded>(_onPolygonPointAdded);
    on<LastPointUndone>(_onLastPointUndone);
    on<PolygonCleared>(_onPolygonCleared);
    on<PolygonSaved>(_onPolygonSaved);
  }

  GoogleMapController? _mapController;

  Future<void> _onMapInitialized(
    MapInitialized event,
    Emitter<MapState> emit,
  ) async {
    _mapController = event.controller;

    if (!await Geolocator.isLocationServiceEnabled()) {
      emit(const MapState.error('Location services are disabled'));
      return;
    }

    var permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        emit(const MapState.error('Location permissions are denied'));
        return;
      }
    }

    try {
      final Position position = await Geolocator.getCurrentPosition();
      final currentLocation = LatLng(position.latitude, position.longitude);

      emit(MapState.loaded(
        currentPolygonPoints: const [],
        savedPolygons: const {},
        markers: const {},
        polygonIdCounter: 1,
        isInitialized: true,
        currentLocation: currentLocation,
      ));

      _mapController?.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: currentLocation,
            zoom: 15,
          ),
        ),
      );

      Geolocator.getPositionStream().listen((Position position) {
        add(LocationUpdated(LatLng(position.latitude, position.longitude)));
      });
    } catch (e) {
      emit(MapState.error(e.toString()));
    }
  }

  Future<void> _onLocationUpdated(
    LocationUpdated event,
    Emitter<MapState> emit,
  ) async {
    if (state is! MapLoaded) return;
    final loadedState = state as MapLoaded;

    emit(MapState.loaded(
      currentPolygonPoints: loadedState.currentPolygonPoints,
      savedPolygons: loadedState.savedPolygons,
      markers: loadedState.markers,
      polygonIdCounter: loadedState.polygonIdCounter,
      isInitialized: loadedState.isInitialized,
      currentLocation: event.location,
    ));

    _mapController?.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: event.location,
          zoom: 15,
        ),
      ),
    );
  }

  Future<void> _onPolygonPointAdded(
    PolygonPointAdded event,
    Emitter<MapState> emit,
  ) async {
    if (state is! MapLoaded) return;
    final loadedState = state as MapLoaded;

    final newPoints = List<LatLng>.from(loadedState.currentPolygonPoints)
      ..add(event.point);

    final newMarkers = Set<Marker>.from(loadedState.markers)
      ..add(Marker(
        markerId: MarkerId('marker_${newPoints.length}'),
        position: event.point,
        icon: BitmapDescriptor.defaultMarker,
      ));
    final newPolylines = Set<Polyline>.from(loadedState.polylines);
    if (newPoints.length > 1) {
      newPolylines.add(
        Polyline(
          polylineId: PolylineId('line_${newPoints.length}'),
          points: newPoints,
          color: Colors.blue,
          width: 2,
        ),
      );
    }
    final currentPolygon = Polygon(
      polygonId: const PolygonId('current_polygon'),
      points: newPoints,
      strokeWidth: 2,
      strokeColor: Colors.blue,
      fillColor: Colors.blue.withValues(alpha: .15),
    );

    final newPolygons = Set<Polygon>.from(loadedState.savedPolygons)
      ..removeWhere((polygon) => polygon.polygonId.value == 'current_polygon')
      ..add(currentPolygon);

    emit(MapState.loaded(
      currentPolygonPoints: newPoints,
      markers: newMarkers,
      polylines: newPolylines,
      savedPolygons: newPolygons,
      polygonIdCounter: loadedState.polygonIdCounter,
      isInitialized: loadedState.isInitialized,
      currentLocation: loadedState.currentLocation,
    ));
  }

  Future<void> _onLastPointUndone(
    LastPointUndone event,
    Emitter<MapState> emit,
  ) async {
    if (state is! MapLoaded) return;
    final loadedState = state as MapLoaded;

    if (loadedState.currentPolygonPoints.isEmpty) return;

    final newPoints = List<LatLng>.from(loadedState.currentPolygonPoints)
      ..removeLast();

    final newMarkers = Set<Marker>.from(loadedState.markers)
      ..removeWhere((marker) =>
          marker.markerId.value ==
          'marker_${loadedState.currentPolygonPoints.length}');

    final currentPolygon = newPoints.isNotEmpty && newPoints.length >= 3
        ? Polygon(
            polygonId: const PolygonId('current_polygon'),
            points: newPoints,
            strokeWidth: 2,
            strokeColor: Colors.blue,
            fillColor: Colors.blue.withValues(alpha: .15),
          )
        : null;

    final newPolygons = Set<Polygon>.from(loadedState.savedPolygons)
      ..removeWhere((polygon) => polygon.polygonId.value == 'current_polygon');

    if (currentPolygon != null) {
      newPolygons.add(currentPolygon);
    }

    emit(MapState.loaded(
      currentPolygonPoints: newPoints,
      markers: newMarkers,
      savedPolygons: newPolygons,
      polygonIdCounter: loadedState.polygonIdCounter,
      isInitialized: loadedState.isInitialized,
      currentLocation: loadedState.currentLocation,
    ));
  }

  Future<void> _onPolygonCleared(
    PolygonCleared event,
    Emitter<MapState> emit,
  ) async {
    if (state is! MapLoaded) return;
    final loadedState = state as MapLoaded;

    final newPolygons = Set<Polygon>.from(loadedState.savedPolygons)
      ..removeWhere((polygon) => polygon.polygonId.value == 'current_polygon');

    emit(MapState.loaded(
      currentPolygonPoints: [],
      markers: {},
      savedPolygons: newPolygons,
      polygonIdCounter: loadedState.polygonIdCounter,
      isInitialized: loadedState.isInitialized,
      currentLocation: loadedState.currentLocation,
    ));
  }

  bool _doLineSegmentsIntersect(LatLng p1, LatLng p2, LatLng p3, LatLng p4) {
    double a1 = p2.latitude - p1.latitude;
    double b1 = p1.longitude - p2.longitude;
    double c1 = a1 * p1.longitude + b1 * p1.latitude;

    double a2 = p4.latitude - p3.latitude;
    double b2 = p3.longitude - p4.longitude;
    double c2 = a2 * p3.longitude + b2 * p3.latitude;

    double determinant = a1 * b2 - a2 * b1;
    if (determinant.abs() < 1e-10) return false;

    double x = (b2 * c1 - b1 * c2) / determinant;
    double y = (a1 * c2 - a2 * c1) / determinant;

    return x >= min(p1.longitude, p2.longitude) &&
        x <= max(p1.longitude, p2.longitude) &&
        x >= min(p3.longitude, p4.longitude) &&
        x <= max(p3.longitude, p4.longitude) &&
        y >= min(p1.latitude, p2.latitude) &&
        y <= max(p1.latitude, p2.latitude) &&
        y >= min(p3.latitude, p4.latitude) &&
        y <= max(p3.latitude, p4.latitude);
  }

  bool _hasIntersections(List<LatLng> points) {
    for (int i = 0; i < points.length - 1; i++) {
      for (int j = i + 2; j < points.length - 1; j++) {
        if (_doLineSegmentsIntersect(
            points[i], points[i + 1], points[j], points[j + 1])) {
          return true;
        }
      }
    }
    return false;
  }

  Future<void> _onPolygonSaved(
    PolygonSaved event,
    Emitter<MapState> emit,
  ) async {
    if (state is! MapLoaded) return;
    final loadedState = state as MapLoaded;

    if (loadedState.currentPolygonPoints.length < 3) {
      emit(const MapState.error('Polygon must have at least 3 points'));
      emit(loadedState);
      return;
    }

    if (_hasIntersections(loadedState.currentPolygonPoints)) {
      emit(const MapState.error('Polygon has intersecting edges'));
      emit(loadedState);
      return;
    }

    final savedPolygon = Polygon(
      polygonId: PolygonId('polygon_${loadedState.polygonIdCounter}'),
      points: List.from(loadedState.currentPolygonPoints),
      strokeWidth: 2,
      strokeColor: Colors.green,
      fillColor: Colors.green.withValues(alpha: .15),
    );

    final newPolygons = Set<Polygon>.from(loadedState.savedPolygons)
      ..removeWhere((polygon) => polygon.polygonId.value == 'current_polygon')
      ..add(savedPolygon);

    emit(MapState.loaded(
      savedPolygons: newPolygons,
      currentPolygonPoints: [],
      markers: {},
      polygonIdCounter: loadedState.polygonIdCounter + 1,
      isInitialized: loadedState.isInitialized,
      currentLocation: loadedState.currentLocation,
    ));
  }
}
