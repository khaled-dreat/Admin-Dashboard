part of "../../../../../../core/import/app_import.dart";

class MyCardAndTransctionHistorySection extends StatelessWidget {
  const MyCardAndTransctionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        MyCardSection(),
        Divider(
          height: 40,
          color: Color(0xFFF1F1F1),
        ),
        TransctionHistory()
      ],
    ));
  }
}
