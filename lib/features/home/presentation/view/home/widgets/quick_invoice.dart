part of "../../../../../../core/import/app_import.dart";

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          QuickInvoiceHeader(),
          LatestTranscton(),
          Divider(
            height: 48,
          )
        ],
      ),
    );
  }
}
