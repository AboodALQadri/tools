import 'package:flutter/material.dart';
import 'package:tools/constants/my_colors.dart';
import 'package:tools/models/bn_item.dart';
import 'package:tools/screens/home_screen.dart';
import 'package:tools/screens/notification_screen.dart';
import 'package:tools/screens/person-screen.dart';
import 'package:tools/screens/reservation_screen.dart';
import 'package:tools/widgets/text_utils.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<BnItem> _bnItem = <BnItem>[
    BnItem(title: 'الصفحة الرئيسية', widget: const HomeScreen()),
    BnItem(title: 'الحجوزات', widget: const ReservationScreen()),
    BnItem(title: 'التنبيهات', widget: const NotificationScreen()),
    BnItem(title: 'الصفحة الشخصية', widget:  PersonScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: MyColors.kPrimaryColor,
        title: TextUtils(
          text: _bnItem[_currentIndex].title,
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontSize: 22,
        ),
        actions: [
          Visibility(
            visible: _currentIndex == 0 || _currentIndex == 1,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ),
        ],
        elevation: 0,
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home,
            ),
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'الأجهزة',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.library_books,
            ),
            icon: Icon(
              Icons.library_books_outlined,
            ),
            label: 'الحجوزات',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.notifications,
            ),
            icon: Icon(
              Icons.notifications_outlined,
            ),
            label: 'التنبيهات',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.person,
            ),
            icon: Icon(
              Icons.person_outline,
            ),
            label: 'الفصحة الشخصية',
          ),
        ],
      ),
      body: _bnItem[_currentIndex].widget,
    );
  }
}
