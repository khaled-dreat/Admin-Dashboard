part of '../../../../../../core/import/app_import.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [Expanded(child: CustomDrawer())],
    );
  }
}
