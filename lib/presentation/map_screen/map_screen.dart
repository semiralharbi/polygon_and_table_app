import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:polygon_map_app/presentation/map_screen/bloc/bloc/map_bloc.dart';
import 'package:polygon_map_app/presentation/map_screen/bloc/bloc/map_event.dart';
import 'package:polygon_map_app/presentation/map_screen/bloc/bloc/map_state.dart';
import 'package:polygon_map_app/presentation/map_screen/widgets/custom_drawer.dart';
import 'package:polygon_map_app/presentation/map_screen/widgets/map_app_bar.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MapBloc(),
      child: const _MapScreenView(),
    );
  }
}

class _MapScreenView extends StatelessWidget {
  const _MapScreenView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: MapAppBar(),
      body: BlocConsumer<MapBloc, MapState>(
          listener: (context, state) => state.whenOrNull(
                error: (message) => ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    SnackBar(
                      content: Text(
                        message,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
              ),
          builder: (context, state) => state.maybeWhen(
                initial: () => GoogleMap(
                  initialCameraPosition: const CameraPosition(
                    target: LatLng(0, 0),
                    zoom: 2,
                  ),
                  onMapCreated: (GoogleMapController controller) {
                    context.read<MapBloc>().add(MapInitialized(controller));
                  },
                  myLocationEnabled: true,
                  zoomControlsEnabled: true,
                  compassEnabled: true,
                ),
                loaded: (currentPolygonPoints, savedPolygons, polylines,
                    markers, polygonIdCounter, isInitialized, currentLocation) {
                  return GoogleMap(
                    padding: const EdgeInsets.all(12),
                    initialCameraPosition: CameraPosition(
                      target: currentLocation ?? const LatLng(0, 0),
                      zoom: 15,
                    ),
                    myLocationEnabled: true,
                    compassEnabled: true,
                    polygons: savedPolygons,
                    polylines: polylines,
                    markers: markers,
                    onTap: (point) =>
                        context.read<MapBloc>().add(PolygonPointAdded(point)),
                  );
                },
                orElse: () => Center(
                  child: CircularProgressIndicator(
                    color: Colors.indigo,
                  ),
                ),
              )),
    );
  }
}
