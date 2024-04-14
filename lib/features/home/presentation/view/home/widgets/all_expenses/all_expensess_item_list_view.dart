part of "../../../../../../../core/import/app_import.dart";

class AllExpensessItemListView extends StatefulWidget {
  const AllExpensessItemListView({super.key});

  @override
  State<AllExpensessItemListView> createState() =>
      _AllExpensessItemListViewState();
}

class _AllExpensessItemListViewState extends State<AllExpensessItemListView> {
  List<AllEepensessItemModel> items = [
    const AllEepensessItemModel(
        icon: AppImages.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    const AllEepensessItemModel(
        icon: AppImages.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    const AllEepensessItemModel(
        icon: AppImages.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];
  int selectedIndex = 0;
  void uodateIndex(int value) {
    setState(() {
      selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map(
        (e) {
          int index = e.key;
          var item = e.value;
          if (index != 1) {
            return Expanded(
                child: InkWell(
              onTap: () {
                uodateIndex(index);
              },
              child: AllExpensessItem(
                allEepensessItemModel: item,
                isActive: selectedIndex == index,
              ),
            ));
          } else {
            return Expanded(
              child: InkWell(
                onTap: () {
                  uodateIndex(index);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: AllExpensessItem(
                      allEepensessItemModel: item,
                      isActive: selectedIndex == index),
                ),
              ),
            );
          }
        },
      ).toList(),
    );
  }
}
