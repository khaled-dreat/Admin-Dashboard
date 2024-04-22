part of "../../../../../../core/import/app_import.dart";

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [HeaderIncomeSection(), IncomSectionBody()],
      ),
    );
  }
}

class IncomSectionBody extends StatelessWidget {
  const IncomSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return width >= 1200 && width < 1750
        ? SizedBox()
        : Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(flex: 2, child: IncomeDetails())
            ],
          );
  }
}

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const items = [
    ItemDetailsModel(
        color: Color(0xFF208BC7), title: 'Design service', value: '%40'),
    ItemDetailsModel(
        color: Color(0xFF4DB7F2), title: 'Design product', value: '%25'),
    ItemDetailsModel(
        color: Color(0xFF064060), title: 'Product royalti', value: '%20'),
    ItemDetailsModel(color: Color(0xFFE2DECD), title: 'Other', value: '%22'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map(
            (e) => ItemDetails(itemDetailsModel: e),
          )
          .toList(),
    );

//   ListView.builder(
//     shrinkWrap: true,
//     itemCount: items.length,
//     itemBuilder: (context, index) {
//       return ItemDetails(itemDetailsModel: items[index]);
//     },
//   );
  }
}

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailsModel});

  final ItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: const EdgeInsets.only(left: 16),
    //   child: FittedBox(
    //     fit: BoxFit.scaleDown,
    //     child: Row(
    //       children: [
    //         Container(
    //           width: 12,
    //           height: 12,
    //           decoration: ShapeDecoration(
    //             color: itemDetailsModel.color,
    //             shape: const OvalBorder(),
    //           ),
    //         ),
    //         const SizedBox(
    //           width: 12,
    //         ),
    //         Text(
    //           itemDetailsModel.title,
    //           style: AppStyles.styleRegular16,
    //         ),
    //         const SizedBox(
    //           width: 24,
    //         ),
    //         Text(
    //           itemDetailsModel.value,
    //           style: AppStyles.styleMedium16,
    //         ),
    //       ],
    //     ),
    //   ),
    // );
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemDetailsModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        itemDetailsModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        itemDetailsModel.value,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}

class HeaderIncomeSection extends StatelessWidget {
  const HeaderIncomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Monthly",
          style: AppStyles.styleMedium16(context),
        ),
        SizedBox(
          width: 18,
        ),
        Icon(
          Icons.keyboard_arrow_down_rounded,
          color: const Color(0xFF064061),
        )
      ],
    );
  }
}

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getChartData()),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pietouchResponse) {
          activeIndex =
              pietouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          showTitle: false,
          value: 40,
          radius: activeIndex == 0 ? 60 : 50,
          color: const Color(0xFF208BC7),
        ),
        PieChartSectionData(
          value: 25,
          radius: activeIndex == 1 ? 60 : 50,
          showTitle: false,
          color: const Color(0xFF4DB7F2),
        ),
        PieChartSectionData(
          value: 20,
          radius: activeIndex == 2 ? 60 : 50,
          showTitle: false,
          color: const Color(0xFF064060),
        ),
        PieChartSectionData(
          value: 22,
          radius: activeIndex == 3 ? 60 : 50,
          showTitle: false,
          color: const Color(0xFFE2DECD),
        ),
      ],
    );
  }
}
