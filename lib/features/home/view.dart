import 'package:flutter/material.dart';

import '../../core/app_colors/app_colors.dart';
import '../../core/app_icons/app_icons.dart';

part 'units/app_bar.dart';

part 'units/home_content.dart';

part 'units/create_post_section.dart';

part 'units/post_section.dart';

part 'units/story_section.dart';

part 'units/home_action_buttons.dart';

part 'units/home_tab_bar.dart';

part 'units/app_tab_icon.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 6, vsync: this)
      ..addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //test
      appBar: _HomeAppBar(tabController: _tabController),
      body: TabBarView(
        controller: _tabController,
        children: const [
          _HomeContent(),
          Center(child: Text('Videos')),
          Center(child: Text('Store')),
          Center(child: Text('Profile')),
          Center(child: Text('Notifications')),
          Center(child: Text('User')),
        ],
      ),
    );
  }
}
