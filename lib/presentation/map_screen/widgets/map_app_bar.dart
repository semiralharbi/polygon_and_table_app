import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polygon_map_app/presentation/map_screen/bloc/bloc/map_bloc.dart';
import 'package:polygon_map_app/presentation/map_screen/bloc/bloc/map_event.dart';

class MapAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MapAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Map with Polygons'),
      actions: [
        IconButton(
          icon: const Icon(Icons.undo),
          onPressed: () => context.read<MapBloc>().add(LastPointUndone()),
        ),
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () => context.read<MapBloc>().add(PolygonCleared()),
        ),
        IconButton(
          icon: const Icon(Icons.save),
          onPressed: () => context.read<MapBloc>().add(PolygonSaved()),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
