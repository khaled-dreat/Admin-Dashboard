part of "../../../../../../core/import/app_import.dart";

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const UserInfoListTitle(
              image: AppImages.imagesAvatar3,
              title: "Lekan Okeowo",
              subtitle: "demo@gmail.com"),
          SizedBox(
            height: 8,
          ),
          DrawerItemListView()
        ],
      ),
    );
  }
}
