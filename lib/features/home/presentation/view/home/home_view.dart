part of "../../../../../core/import/app_import.dart";

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F9FA),
      body: AdaptiveLayout(
          mbileLayoutView: (context) => Text("mbileLayoutView"),
          tabletLayoutView: (context) => Text("tabletLayoutView"),
          decktobLayoutView: (context) => DashboardDesktopLayout()),
    );
  }
}
