part of "../../../../../../../core/import/app_import.dart";

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.title,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: SvgPicture.asset(drawerItemModel.image),
          title: Text(
            drawerItemModel.title,
            style: AppStyles.styleBold16(context),
          ),
          trailing: Container(
            width: 3.27,
            decoration: const BoxDecoration(color: Color(0xFF4EB7F2)),
          ),
        )
      ],
    );
  }
}
