
import 'package:equatable/equatable.dart';

abstract class CountryEvent extends Equatable{
  const CountryEvent();

  @override
  List<Object?> get props => [];
}

class SelectCountryEvent extends CountryEvent{
  final String countryCode;
  final String country;

  const SelectCountryEvent({required this.country, required this.countryCode});
   @override
  List<Object?> get props => [countryCode,country];
}
