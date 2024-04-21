part of "../../../../../../core/import/app_import.dart";

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [CustomDrawer(), AllExpensessAndQuickInvoiceSection()],
    );
  }
}
