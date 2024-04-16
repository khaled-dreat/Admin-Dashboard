// ignore_for_file: public_member_api_docs, sort_constructors_first
part of "../../../../../../core/import/app_import.dart";

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImages.imagesCardBackground)),
            color: Color(0xFF4EB7F2),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                "Name card",
                style: AppStyles.styleRegular16(context)
                    .copyWith(color: Colors.white),
              ),
              subtitle: Text(
                "Syah Bandi",
                style: AppStyles.styleMedium20(context),
              ),
              trailing: SvgPicture.asset(AppImages.imagesGallery),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "0123 4567 8912 3456",
                    style: AppStyles.styleSemiBold24(context)
                        .copyWith(color: Colors.white),
                  ),
                  Text(
                    "12/20-124",
                    style: AppStyles.styleRegular16(context)
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 54 - 28,
            ),
          ],
        ),
      ),
    );
  }
}

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
        DotIndicator(
          currentPageIndex: currentPageIndex,
        )
      ],
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    required this.currentPageIndex,
  });
  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 6),
          child: CustomDotIndicator(isActive: currentPageIndex == index),
        ),
      ),
    );
  }
}

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      width: isActive ? 32 : 8,
      height: 8,
      decoration: ShapeDecoration(
          color: isActive ? Color(0XFF4DB7F2) : Color(0xFFE7E7E7),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
    );
  }
}

class MyCardPageView extends StatelessWidget {
  const MyCardPageView({super.key, required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: controller,
      scrollDirection: Axis.horizontal,
      children: List.generate(
        3,
        (index) => MyCard(),
      ),
    );
  }
}
