import 'package:flutter/material.dart';
import 'package:ubereats/core/constants/app_colors.dart';
import 'package:ubereats/core/utils/responsive_helper.dart';
import 'package:ubereats/presentation/widgets/custom_button.dart';
import 'package:ubereats/presentation/widgets/custom_text_input.dart';

class AddressInfoScreen extends StatelessWidget {
  const AddressInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mercury,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: ResponsiveHelper.screenWidth(context) * 0.010,
                  horizontal: ResponsiveHelper.screenWidth(context) * 0.020,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(Icons.close),
                          iconSize: 24,
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              "Address info",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColor.black,
                                fontSize:
                                    ResponsiveHelper.screenHeight(context) *
                                        0.022,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                            width:
                                ResponsiveHelper.screenWidth(context) * 0.100),
                      ],
                    ),
                    SizedBox(
                        height: ResponsiveHelper.screenHeight(context) * 0.010),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal:
                            ResponsiveHelper.screenHeight(context) * 0.010,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          'https://images.ctfassets.net/zsv3d0ugroxu/2Um47oPIhrlVkKxH1aK84O/e2a86e0e6a98edcc381d15291e109662/screenshot_AccessingMapView3',
                          width: ResponsiveHelper.screenWidth(context) * 0.9,
                          height:
                              ResponsiveHelper.screenHeight(context) * 0.258,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                        height: ResponsiveHelper.screenHeight(context) * 0.008),
                    Padding(
                      padding: EdgeInsets.all(
                          ResponsiveHelper.screenHeight(context) * 0.015),
                      child: Text(
                        '239 Greene St, New York, NY 10003, USA',
                        style: TextStyle(color: AppColor.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(
                          ResponsiveHelper.screenHeight(context) * 0.010),
                      child: CustomTextInput(hintText: 'Apt/Suite/Floor'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(
                          ResponsiveHelper.screenHeight(context) * 0.010),
                      child: CustomTextInput(
                          hintText: 'Business or building name'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(
                          ResponsiveHelper.screenHeight(context) * 0.010),
                      child: Text(
                        'Delivery Option',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: AppColor.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: ResponsiveHelper.screenHeight(context) * 0.010),
                      child: SizedBox(
                        height: 40,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.symmetric(
                                vertical:
                                    ResponsiveHelper.screenHeight(context) *
                                        0.005,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal:
                                    ResponsiveHelper.screenWidth(context) *
                                        0.02,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppColor.mercury,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Icon(Icons.door_back_door),
                                  const Text('Leave at door'),
                                ],
                              ),
                            );
                          },
                          itemCount: 1,
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: ResponsiveHelper.screenHeight(context) * 0.010,
                    ),
                    Padding(
                      padding: EdgeInsets.all(
                          ResponsiveHelper.screenHeight(context) * 0.010),
                      child: Text(
                        'Address label',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: AppColor.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: ResponsiveHelper.screenHeight(context) * 0.010,
                          right:
                              ResponsiveHelper.screenHeight(context) * 0.010),
                      child: CustomTextInput(hintText: 'Add address label'),
                    ),
                    SizedBox(
                      height: ResponsiveHelper.screenHeight(context) * 0.010,
                    ),
                    Padding(
                      padding: EdgeInsets.all(
                          ResponsiveHelper.screenHeight(context) * 0.010),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, '/pushnotification');
                        },
                        child: CustomButton(
                            title: 'Save and continue',
                            color: AppColor.primaryGreen,
                            textColor: AppColor.secondary),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
