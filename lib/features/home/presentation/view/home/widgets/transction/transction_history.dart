part of "../../../../../../../core/import/app_import.dart";

class TransctionHistory extends StatelessWidget {
  const TransctionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransctionHistoryHeader(),
        const SizedBox(
          height: 20,
        ),
        Text(
          "13 April 2022",
          style: AppStyles.styleRegular16(context)
              .copyWith(color: const Color(0XFFAAAAAA)),
        ),
        const SizedBox(
          height: 16,
        ),
        const TransctionHistoryListView()
      ],
    );
  }
}
