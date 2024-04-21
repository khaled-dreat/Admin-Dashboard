part of "../../import/app_import.dart";

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mbileLayoutView,
      required this.tabletLayoutView,
      required this.decktobLayoutView});
  final WidgetBuilder mbileLayoutView, tabletLayoutView, decktobLayoutView;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mbileLayoutView(context);
        } else if (constraints.maxWidth < 1300) {
          return tabletLayoutView(context);
        } else {
          return decktobLayoutView(context);
        }
      },
    );
  }
}
