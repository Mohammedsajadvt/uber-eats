import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ubereats/core/constants/app_colors.dart';
import 'package:ubereats/core/constants/app_images.dart';
import 'package:ubereats/core/utils/responsive_helper.dart';

class AddLocationScreen extends StatelessWidget {
  const AddLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mercury,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: ResponsiveHelper.screenHeight(context) * 0.010,
                  horizontal: ResponsiveHelper.screenHeight(context) * 0.020,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: ResponsiveHelper.screenWidth(context) * 0.100),
                          Expanded(
                            child: Center(
                              child: Text(
                                "Order details",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.black,
                                  fontSize: ResponsiveHelper.screenHeight(context) * 0.022,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Log out",
                              style: TextStyle(color: AppColor.red),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: ResponsiveHelper.screenHeight(context) * 0.010),
                    Text(
                      "Find food near you",
                      style: TextStyle(
                        fontSize: ResponsiveHelper.screenHeight(context) * 0.030,
                        color: AppColor.black,
                      ),
                    ),
                    SizedBox(height:ResponsiveHelper.screenHeight(context) *0.005),
                    Text(
                      "We need to know your address in order to find delicious food for you.",
                      style: TextStyle(
                        fontSize: ResponsiveHelper.screenHeight(context) * 0.020,
                      ),
                    ),
                    SizedBox(height: ResponsiveHelper.screenHeight(context) * 0.020),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(CupertinoIcons.search),
                        hintText: 'Enter new address',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: AppColor.textFieldPrimry),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: AppColor.textFieldPrimry),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: AppColor.textFieldPrimry,
                            width: 2.0,
                          ),
                        ),
                        fillColor: AppColor.textFieldPrimry,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: ResponsiveHelper.screenHeight(context) * 0.050),
                    Text(
                      'Nearby',
                      style: TextStyle(fontSize: 18, color: AppColor.black, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: ResponsiveHelper.screenHeight(context) * 0.010),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColor.lightGreen,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: ResponsiveHelper.screenHeight(context) * 0.090,
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.all(ResponsiveHelper.screenHeight(context) * 0.010),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, '/addressinfo');
                          },
                          child: Row(
                            children: [
                              SizedBox(height: 50, child: Image.asset(AppImage.telegram)),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: ResponsiveHelper.screenHeight(context) * 0.005),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Current location',
                                      style: TextStyle(
                                        fontSize: ResponsiveHelper.screenHeight(context) * 0.022,
                                        color: AppColor.black,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                     Text('239 Greene St, New York, NY 10003, USA',style: TextStyle(
                                        fontSize: ResponsiveHelper.screenHeight(context) * 0.016,
                                      ),),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
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
