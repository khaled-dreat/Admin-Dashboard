part of '../../../../../../core/import/app_import.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(flex: 2, child: AllExpensessAndQuickInvoiceSection()),
        SizedBox(
          width: 24,
        ),
        Expanded(child: MyCardSection())
      ],
    );
  }
}
