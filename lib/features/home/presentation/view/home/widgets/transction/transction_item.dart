part of "../../../../../../../core/import/app_import.dart";

class TransctionItem extends StatelessWidget {
  const TransctionItem({super.key, required this.transctionModel});
  final TransctionModel transctionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(
          transctionModel.title,
          style: AppStyles.styleRegular16(context),
        ),
        subtitle: Text(
          transctionModel.date,
          style: AppStyles.styleRegular16(context)
              .copyWith(color: const Color(0xFFAAAAAA)),
        ),
        trailing: Text(
          transctionModel.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
              color: transctionModel.isWithdrawal
                  ? const Color(0xFFF3735E)
                  : const Color(0xFF7CD87A)),
        ),
      ),
    );
  }
}
