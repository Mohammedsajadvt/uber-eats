import 'package:equatable/equatable.dart';

class CountryState extends Equatable {
  final String selectedCountryCode;
  final String selectedCountry;

  const CountryState({required this.selectedCountryCode, required this.selectedCountry});

  @override
  List<Object?> get props => [selectedCountryCode, selectedCountry];

  CountryState copyWith({
    String? selectedCountryCode,
    String? selectedCountry,
  }) {
    return CountryState(
      selectedCountryCode: selectedCountryCode ?? this.selectedCountryCode,
      selectedCountry: selectedCountry ?? this.selectedCountry,
    );
  }
}
