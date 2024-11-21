import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ubereats/presentation/blocs/bloc/country_bloc_event.dart';
import 'package:ubereats/presentation/blocs/bloc/country_bloc_state.dart';


class CountryBloc extends Bloc<CountryEvent, CountryState> {
  CountryBloc()
      : super(const CountryState(selectedCountryCode: '+91', selectedCountry: 'IN')) {
    on<SelectCountryEvent>((event, emit) {
      emit(state.copyWith(
        selectedCountryCode: event.countryCode,
        selectedCountry: event.country,
      ));
    });
  }
}
