part of "../../../../../../core/import/app_import.dart";

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
