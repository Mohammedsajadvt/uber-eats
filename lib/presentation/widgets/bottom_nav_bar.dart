import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ubereats/core/constants/app_colors.dart';
import 'package:ubereats/core/constants/app_images.dart';
import 'package:ubereats/core/routes/app_routes.dart';
import 'package:ubereats/presentation/blocs/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:ubereats/presentation/screens/app_screens/brows_screen.dart';
import 'package:ubereats/presentation/screens/app_screens/home_screen.dart';
import 'package:ubereats/presentation/screens/app_screens/orders_screen.dart';
import 'package:ubereats/presentation/screens/app_screens/profile_screen.dart';

List<BottomNavigationBarItem> bottomNavIteams = <BottomNavigationBarItem>[
   BottomNavigationBarItem(
    icon: ImageIcon(AssetImage(AppImage.home)),
    label: "Home",
  ),
   BottomNavigationBarItem(
    icon: ImageIcon(AssetImage(AppImage.search)),
    label: "Brows",
  ),
   BottomNavigationBarItem(
    icon: ImageIcon(AssetImage(AppImage.document)),
    label: "Orders",
  ),
   BottomNavigationBarItem(
    icon: ImageIcon(AssetImage(AppImage.profile)),
    label: "Profile",
  ),
];

const List<Widget> bottomNavScreens = <Widget> [
    HomeScreen(),
    BrowsScreen(),
    OrdersScreen(),
    ProfileScreen() 
  ];

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BottomNavigationBloc, BottomNavigationState>(builder: (context,state){
      return Scaffold(
      body: Center(child: bottomNavScreens.elementAt(state.tabIndex),),
      bottomNavigationBar: BottomNavigationBar(items: bottomNavIteams,elevation: 0,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: AppColor.grey,
          selectedItemColor: AppColor.black,
          currentIndex: state.tabIndex,
          selectedLabelStyle: const TextStyle(fontSize: 12),
          unselectedLabelStyle: const TextStyle(fontSize: 12),
          onTap: (index){
            BlocProvider.of<BottomNavigationBloc>(context).add(TabChange(tabIndex: index));
          },
          ),
          
      );
    }, listener: (context,state){});
  }
}