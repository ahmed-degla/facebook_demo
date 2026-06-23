part of '../view.dart';

class _HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _HomeAppBar({super.key, required this.tabController});

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset(
        AppIcons.facebook,
        width: 156,
        height: 36,
        fit: BoxFit.fitWidth,
      ),
      
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: false,
      actionsPadding: const EdgeInsets.only(right: 16),
      actions: const [HomeActionButtons()], //test
      bottom: HomeTabBar(controller: tabController),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 48);
}
