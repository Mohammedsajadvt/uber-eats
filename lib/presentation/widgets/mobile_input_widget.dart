import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ubereats/core/constants/app_colors.dart';
import 'package:ubereats/core/utils/responsive_helper.dart';
import 'package:ubereats/presentation/blocs/country_bloc/country_bloc_bloc.dart';
import 'package:ubereats/presentation/blocs/country_bloc/country_bloc_event.dart';
import 'package:ubereats/presentation/blocs/country_bloc/country_bloc_state.dart';

class MobileInputWidget extends StatelessWidget {
  final List<Map<String, String>> countries = [
    {'code': 'IN', 'dialCode': '+91', 'maxLength': '10'}, // India
    {'code': 'US', 'dialCode': '+1', 'maxLength': '10'},  // United States
    {'code': 'AE', 'dialCode': '+971', 'maxLength': '9'}, // UAE
    {'code': 'SA', 'dialCode': '+966', 'maxLength': '9'}, // Saudi Arabia
  ];

  MobileInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CountryBloc(),
      child: BlocBuilder<CountryBloc, CountryState>(
        builder: (context, state) {
          final selectedCountry = countries.firstWhere(
              (country) => country['dialCode'] == state.selectedCountryCode);
          final maxLength = int.parse(selectedCountry['maxLength']!);

          return Row(
            children: [
              Container(
                height: ResponsiveHelper.screenHeight(context) * 0.068,
                width: ResponsiveHelper.screenHeight(context) * 0.140, 
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColor.textFieldPrimry,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/flags/${state.selectedCountry}.png',
                      height: 30, 
                      width: 40,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.flag, size: 24);
                      },
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: DropdownButton<String>(
                        value: state.selectedCountryCode,
                        items: countries.map((country) {
                          return DropdownMenuItem<String>(
                            value: country['dialCode'],
                            child: Text(
                              country['dialCode']!,
                              style: const TextStyle(fontSize: 14),
                            ),
                          );
                        }).toList(),
                        onChanged: (value) {
                          final selectedCountry = countries.firstWhere(
                              (country) => country['dialCode'] == value)['code']!;
                          context.read<CountryBloc>().add(
                                SelectCountryEvent(
                                  countryCode: value!,
                                  country: selectedCountry,
                                ),
                              );
                        },
                        underline: const SizedBox(),
                        icon: const Icon(Icons.arrow_drop_down, size: 20),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.phone,
                  maxLength: maxLength, 
                  decoration: InputDecoration(
                    counterText: '',
                    hintText: 'Mobile number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: AppColor.textFieldPrimry,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
