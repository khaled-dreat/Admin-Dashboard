part of "../../../../../core/import/app_import.dart";

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
          mbileLayoutView: (context) => Text("mbileLayoutView"),
          tabletLayoutView: (context) => Text("tabletLayoutView"),
          decktobLayoutView: (context) => Text("decktobLayoutView")),
    );
  }
}
