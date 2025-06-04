import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intallek/core/services/street_name_from_latlng.dart';
import 'package:intallek/core/theme/text_styles.dart';
import 'package:intallek/core/widgets/custom_primary_textfield.dart';
import 'package:intallek/presentation/app/controllers/location_cubit/location_cubit.dart';

class SearchYourDestination extends StatefulWidget {
  const SearchYourDestination({super.key});

  @override
  State<SearchYourDestination> createState() => _SearchYourDestinationState();
}

class _SearchYourDestinationState extends State<SearchYourDestination> {
  final TextEditingController searchController = TextEditingController();
  Timer? _debounce;

  @override
  void dispose() {
    searchController.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationCubit, LocationState>(
      builder: (context, state) {
        final locationCubit = context.read<LocationCubit>();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: CustomPrimaryTextfield(
                textAlign: TextAlign.start,
                style: AppStyle.black16W500Style,
                controller: searchController,
                onChanged: (query) async {
                  if (_debounce?.isActive ?? false) _debounce?.cancel();
                  _debounce = Timer(
                    const Duration(milliseconds: 500),
                    () async {
                      if (query.trim().isEmpty) return;

                      final result = await getLatLngFromAddress(query);
                      if (result != null) {
                        context.read<LocationCubit>().updateSelectedLocation(
                          result,
                        );
                        await context
                            .read<LocationCubit>()
                            .mapController
                            ?.animateCamera(CameraUpdate.newLatLng(result));
                      }
                    },
                  );
                },
              ),
            ),
            if (state is LocationSuggestionsUpdated)
              ...state.suggestions.map(
                (s) => ListTile(
                  title: Text(s, style: AppStyle.black16W500Style),
                  onTap: () async {
                    searchController.text = s;
                    locationCubit.clearSuggestions();
                    final latLng = await getLatLngFromAddress(s);
                    if (latLng != null) {
                      locationCubit.updateSelectedLocation(latLng);
                      await locationCubit.mapController?.animateCamera(
                        CameraUpdate.newLatLng(latLng),
                      );
                    }
                  },
                ),
              ),
          ],
        );
      },
    );
  }
}
