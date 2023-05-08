import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../../core/init/routes/app_router.dart';

@RoutePage()
class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [HistoryRoute(), ChatRoute()],
      bottomNavigationBuilder: (context, tabsRouter) => NavigationBar(
          selectedIndex: tabsRouter.activeIndex,
          onDestinationSelected: (value) => tabsRouter.setActiveIndex(value),
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.access_time_outlined), label: 'History'),
            NavigationDestination(icon: Icon(Icons.voice_chat), label: 'Chat')
          ]),
    );
  }
}
