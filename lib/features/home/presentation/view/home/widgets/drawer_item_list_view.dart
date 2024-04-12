part of "../../../../../../core/import/app_import.dart";

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,
  });

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  int activeIndex = 0;
  List<DrawerItemModel> items = [
    const DrawerItemModel(title: 'Dashboard', image: AppImages.imagesDashboard),
    const DrawerItemModel(
        title: 'My Transaction', image: AppImages.imagesMyTransctions),
    const DrawerItemModel(
        title: 'Statistics', image: AppImages.imagesStatistics),
    const DrawerItemModel(
        title: 'Wallet Account', image: AppImages.imagesWalletAccount),
    const DrawerItemModel(
        title: 'My Investments', image: AppImages.imagesMyInvestments),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              drawerItemModel: items.elementAt(index),
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
