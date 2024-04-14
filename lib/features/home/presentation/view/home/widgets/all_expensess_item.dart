part of "../../../../../../core/import/app_import.dart";

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
