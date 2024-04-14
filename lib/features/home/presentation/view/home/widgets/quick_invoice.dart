part of "../../../../../../core/import/app_import.dart";

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [QuickInvoiceHeader(), LatestTranscton()],
      ),
    );
  }
}

class LatestTranscton extends StatelessWidget {
  const LatestTranscton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Latest Transcton',
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 16,
        ),
        const LatestTransctonListView()
      ],
    );
  }
}
