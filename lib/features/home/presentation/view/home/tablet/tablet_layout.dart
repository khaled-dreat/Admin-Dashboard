part of "../../../../../../core/import/app_import.dart";

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
            flex: 3,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AllExpensessAndQuickInvoiceSection(),
                  SizedBox(
                    height: 24,
                  ),
                  MyCardAndTransctionHistorySection(),
                  SizedBox(
                    height: 24,
                  ),
                  IncomeSection()
                ],
              ),
            )),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
