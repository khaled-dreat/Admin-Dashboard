part of "../../../../../core/import/app_import.dart";

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xFFFAFAFA),
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            )
          : null,
      drawer: CustomDrawer(),
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
          mbileLayoutView: (context) => const DashboardMobileLayout(),
          tabletLayoutView: (context) => const DashboardTabletLayout(),
          decktobLayoutView: (context) => const DashboardDesktopLayout()),
    );
  }
}
