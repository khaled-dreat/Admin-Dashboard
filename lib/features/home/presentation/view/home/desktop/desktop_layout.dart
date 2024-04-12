part of '../../../../../../core/import/app_import.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [Expanded(child: CustomDrawer())],
    );
  }
}

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  static const List<DrawerItemModel> items = [
    DrawerItemModel(title: 'Dashboard', image: AppImages.imagesDashboard),
    DrawerItemModel(
        title: 'My Transaction', image: AppImages.imagesMyTransctions),
    DrawerItemModel(title: 'Statistics', image: AppImages.imagesStatistics),
    DrawerItemModel(
        title: 'Wallet Account', image: AppImages.imagesWalletAccount),
    DrawerItemModel(
        title: 'My Investments', image: AppImages.imagesMyInvestments),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const UserInfoListTitle(
              image: AppImages.imagesAvatar3,
              title: "Lekan Okeowo",
              subtitle: "demo@gmail.com"),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return DrawerItem(drawerItemModel: items.elementAt(index));
            },
          )
        ],
      ),
    );
  }
}
