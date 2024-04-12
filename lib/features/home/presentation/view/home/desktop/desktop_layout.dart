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

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          UserInfoListTitle(
              image: AppImages.imagesAvatar3,
              title: "Lekan Okeowo",
              subtitle: "demo@gmail.com")
        ],
      ),
    );
  }
}
