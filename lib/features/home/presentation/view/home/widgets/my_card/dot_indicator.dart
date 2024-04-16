part of "../../../../../../../core/import/app_import.dart";

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
