import 'package:cyclone_chat/pages/contacts/contact_page.dart';
import 'package:cyclone_chat/pages/find/find.dart';
import 'package:cyclone_chat/pages/me/me.dart';
import 'package:cyclone_chat/pages/messages/message_page.dart';
import 'package:cyclone_chat/widgets/custom_animated_bottom_bar.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final _inactiveColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: _buildBottomBar(),
    );
  }
  Widget getBody() {
    List<Widget> pages = [
      Container(
        alignment: Alignment.center,
        child: const MessagePage(),
      ),
      Container(
        alignment: Alignment.center,
        child: const ContactPage(),
      ),
      Container(
        alignment: Alignment.center,
        child: const FindPage(),
      ),
      Container(
        alignment: Alignment.center,
        child: const MePage(),
      ),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }
  Widget _buildBottomBar(){
    return CustomAnimatedBottomBar(
      containerHeight: 70,
      backgroundColor: Colors.white,
      selectedIndex: _currentIndex,
      showElevation: true,
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => _currentIndex = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: const Icon(Icons.message),
          title: Text('消息'),
          number: 98,
          activeColor: Colors.green,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: const Icon(Icons.group),
          title: const Text('联系人'),
          activeColor: Colors.purpleAccent,
          number: 21,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: const Icon(Icons.camera),
          number: 0,
          title: const Text('发现'),
          activeColor: Colors.indigoAccent,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: const Icon(Icons.person),
          title: const Text('我'),
          activeColor: Colors.orange,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
