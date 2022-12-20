import 'package:flutter/material.dart';
import 'package:projek_0jek/Akun/Akun_view.dart';
import 'package:projek_0jek/Beranda/Beranda_view.dart';
import 'package:projek_0jek/Constant.dart';
import 'package:projek_0jek/Inbox/Inbox_view.dart';
import 'package:projek_0jek/Pesanan/Pesanan_view.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    BerandaPage(),
    PesananPage(),
    InboxPage(),
    AkunPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: _buildBottomNavigation(),
    );
  }

  Widget _buildBottomNavigation() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _bottomNavCurrentIndex,
      onTap: (value) {
        setState(() {
          _bottomNavCurrentIndex = value;
        });
      },
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: "Beranda",
            activeIcon: Icon(
              Icons.home,
              color: GojekPalette.green,
            )),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.assignment,
              color: Colors.grey,
            ),
            label: "Pesanan",
            activeIcon: Icon(
              Icons.assignment,
              color: GojekPalette.green,
            )),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.mail,
              color: Colors.grey,
            ),
            label: "Inbox",
            activeIcon: Icon(
              Icons.mail,
              color: GojekPalette.green,
            )),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.grey,
            ),
            label: "Akun",
            activeIcon: Icon(
              Icons.person,
              color: GojekPalette.green,
            ))
      ],
    );
  }
}
