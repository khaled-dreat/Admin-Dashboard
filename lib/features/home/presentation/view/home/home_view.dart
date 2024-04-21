part of "../../../../../core/import/app_import.dart";

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xFFFAFAFA),
              leading: const Icon(Icons.menu),
            )
          : null,
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
          mbileLayoutView: (context) => const DashboardMobileLayout(),
          tabletLayoutView: (context) => const DashboardTabletLayout(),
          decktobLayoutView: (context) => const DashboardDesktopLayout()),
    );
  }
}
