import 'package:flutter/material.dart';
import 'package:tcc/pages/map_page.dart';
import 'package:tcc/pages/marked_places_page.dart';
import 'package:tcc/pages/profile_page.dart';
import 'package:tcc/pages/reminder_page.dart';
import 'package:tcc/pages/signature_page.dart';
import 'package:tcc/widgets/helper_widgets.dart';

class AppPage extends StatefulWidget {
  const AppPage({super.key});

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  int _selectedIndex = 0;

  static final List<Widget> _listWidgets = <Widget>[
    const SignaturePage(),
    const MarkedPlacesPage(),
    const MapPage(),
    const ReminderPage(),
    const ProfilePage(),
  ];

  void _onItemTapped(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: _listWidgets[_selectedIndex],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 70,
              color: color.primary,
              child: BottomNavigationBar(
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
                backgroundColor: color.primary,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                selectedFontSize: 0,
                unselectedFontSize: 0,
                type: BottomNavigationBarType.fixed,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.workspace_premium_outlined,
                      size: 30,
                      color: color.onSecondaryContainer,
                    ),
                    label: '',
                    activeIcon: NavBarIcon(
                        context, Icons.workspace_premium_sharp, 48, 36),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.beenhere_outlined,
                      size: 30,
                      color: color.onSecondaryContainer,
                    ),
                    label: '',
                    activeIcon: NavBarIcon(context, Icons.beenhere, 48, 36),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.navigation_outlined,
                      size: 30,
                      color: color.onSecondaryContainer,
                    ),
                    label: '',
                    activeIcon: NavBarIcon(context, Icons.navigation, 48, 36),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.notifications_active_outlined,
                      size: 30,
                      color: color.onSecondaryContainer,
                    ),
                    label: '',
                    activeIcon:
                        NavBarIcon(context, Icons.notifications, 48, 36),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person_outline,
                      size: 30,
                      color: color.onSecondaryContainer,
                    ),
                    label: '',
                    activeIcon: NavBarIcon(context, Icons.person, 48, 36),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
