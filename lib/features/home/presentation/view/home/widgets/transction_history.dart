part of "../../../../../../core/import/app_import.dart";

class TransctionHistory extends StatelessWidget {
  const TransctionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TransctionHistoryHeader(),
        const SizedBox(
          height: 20,
        ),
        Text(
          "13 April 2022",
          style: AppStyles.styleRegular16(context),
        )
      ],
    );
  }
}

class TransctionItem extends StatelessWidget {
  const TransctionItem({super.key, required this.transctionModel});
  final TransctionModel transctionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(
          transctionModel.title,
          style: AppStyles.styleRegular16(context),
        ),
        subtitle: Text(
          transctionModel.date,
          style: AppStyles.styleRegular16(context)
              .copyWith(color: Color(0xFFAAAAAA)),
        ),
        trailing: Text(
          transctionModel.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
              color: transctionModel.isWithdrawal
                  ? Color(0xFFF3735E)
                  : Color(0xFF7CD87A)),
        ),
      ),
    );
  }
}

class TransctionHistoryHeader extends StatelessWidget {
  const TransctionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20(context),
        ),
        Text(
          'See all',
          style: AppStyles.styleMedium16(context),
        )
      ],
    );
  }
}
