import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'map_state.freezed.dart';

@freezed
class MapState with _$MapState {
  const factory MapState.initial() = MapInitial;

  const factory MapState.loaded({
    @Default([]) List<LatLng> currentPolygonPoints,
    @Default({}) Set<Polygon> savedPolygons,
    @Default({}) Set<Polyline> polylines,
    @Default({}) Set<Marker> markers,
    @Default(1) int polygonIdCounter,
    @Default(false) bool isInitialized,
    LatLng? currentLocation,
  }) = MapLoaded;

  const factory MapState.error(String message) = MapError;
}
