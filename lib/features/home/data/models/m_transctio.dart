part of "../../../../core/import/app_import.dart";

class TransctionModel {
  final String title, date, amount;
  final bool isWithdrawal;

  const TransctionModel(
      {required this.title,
      required this.date,
      required this.amount,
      required this.isWithdrawal});
}
