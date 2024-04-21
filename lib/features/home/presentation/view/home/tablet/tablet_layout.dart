part of "../../../../../../core/import/app_import.dart";

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(flex: 3, child: AllExpensessAndQuickInvoiceSection()),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
