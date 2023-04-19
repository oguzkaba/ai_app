import 'package:flutter/material.dart';

import '../chat/chat_view.dart';
import '../history/history_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(children: const [HistoryView(), ChatView()]),
      bottomNavigationBar: NavigationBar(
          selectedIndex: selectPage,
          onDestinationSelected: (value) => setState(() => selectPage = value),
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.access_time_outlined), label: 'History'),
            NavigationDestination(icon: Icon(Icons.voice_chat), label: 'Chat')
          ]),
    );
  }
}
