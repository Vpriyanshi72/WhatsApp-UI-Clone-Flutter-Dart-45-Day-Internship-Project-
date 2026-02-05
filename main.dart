import 'package:flutter/material.dart';
import 'package:whats_app_ui/updates_page.dart';
import 'chats_page.dart';
import 'calls_page.dart';
import 'communities_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const ChatsPage(),
     UpdatesPage(),
     CallsPage(),
    const CommunitiesPage(),
  ];

  final List<String> _titles = [
    'Whatsapp',
    'Updates',
    'Calls',
    'Communities',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(_titles[_selectedIndex]),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.qr_code),
              onPressed: () {
                // Define action for scanner icon
              },
            ),
            IconButton(
              icon: const Icon(Icons.camera_alt),
              onPressed: () {
                // Define action for camera icon
              },
            ),
            PopupMenuButton<String>(
              icon: const Icon(Icons.more_vert),
              onSelected: (value) {
                // Define action for more options
              },
              itemBuilder: (BuildContext context) {
                return [
                  const PopupMenuItem<String>(
                    value: 'new_group',
                    child: Text('New Group'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'new_broadcast',
                    child: Text('New Broadcast'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'whatsApp_web',
                    child: Text('WhatsApp Web'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'starred_messages',
                    child: Text('Starred Messages'),
                  ),
                ];
              },
            ),
          ],
        ),
        body: _pages[_selectedIndex],
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Define action for FAB here
          },
          backgroundColor: Colors.green,
          child: const Icon(Icons.chat, color: Colors.white),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.update),
              label: 'Updates',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'Calls',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group),
              label: 'Communities',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
