part of "../../../../../../../core/import/app_import.dart";

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(
      () {
        currentPageIndex = pageController.page!.round();
        setState(() {});
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 420,
          child: Text(
            "My card",
            style: AppStyles.styleSemiBold20(context),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        MyCardPageView(
          controller: pageController,
        ),
        const SizedBox(
          height: 20,
        ),
        DotIndicator(
          currentPageIndex: currentPageIndex,
        )
      ],
    );
  }
}
