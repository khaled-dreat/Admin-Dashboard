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

class LatestTranscton extends StatelessWidget {
  const LatestTranscton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
