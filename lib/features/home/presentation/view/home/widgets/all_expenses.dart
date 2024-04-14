part of "../../../../../../core/import/app_import.dart";

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: const Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensessItemListView()
        ],
      ),
    );
  }
}

class AllExpensessItem extends StatelessWidget {
  const AllExpensessItem(
      {super.key, required this.allEepensessItemModel, required this.isActive});
  final AllEepensessItemModel allEepensessItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveAllExpensessItem(allEepensessItemModel: allEepensessItemModel)
        : InActiveAllExpensessItem(
            allEepensessItemModel: allEepensessItemModel);
  }
}

class InActiveAllExpensessItem extends StatelessWidget {
  const InActiveAllExpensessItem({
    super.key,
    required this.allEepensessItemModel,
  });

  final AllEepensessItemModel allEepensessItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(width: 1, color: Color(0XFFF1F1F1)))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(
            icon: allEepensessItemModel.icon,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            allEepensessItemModel.title,
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allEepensessItemModel.date,
            style: AppStyles.styleRegular14(context),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            allEepensessItemModel.price,
            style: AppStyles.styleSemiBold24(context),
          ),
        ],
      ),
    );
  }
}

class ActiveAllExpensessItem extends StatelessWidget {
  const ActiveAllExpensessItem({
    super.key,
    required this.allEepensessItemModel,
  });

  final AllEepensessItemModel allEepensessItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
          color: const Color(0xFF4DB7F2),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(width: 1, color: Color(0XFFF1F1F1)))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(
            icon: allEepensessItemModel.icon,
            imageBackground: Colors.white.withOpacity(0.1000000014011612),
            imageColore: Colors.white,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            allEepensessItemModel.title,
            style:
                AppStyles.styleMedium16(context).copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allEepensessItemModel.date,
            style: AppStyles.styleRegular14(context)
                .copyWith(color: Color(0xFFFAFAFA)),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            allEepensessItemModel.price,
            style: AppStyles.styleSemiBold24(context)
                .copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class AllExpensessItemHeader extends StatelessWidget {
  const AllExpensessItemHeader(
      {super.key, required this.icon, this.imageBackground, this.imageColore});
  final String icon;
  final Color? imageBackground, imageColore;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
              shape: const OvalBorder(),
              color: imageBackground ?? const Color(0XFFFAFAFA)),
          child: Center(
              child: SvgPicture.asset(
            icon,
            colorFilter: ColorFilter.mode(
                imageColore ?? const Color(0Xff4Eb7F2), BlendMode.srcIn),
          )),
        ),
        const Spacer(),
        Icon(
          Icons.arrow_forward_ios_outlined,
          color: imageColore == null ? const Color(0xFF064061) : Colors.white,
        )
      ],
    );
  }
}

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
