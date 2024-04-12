part of "../../import/app_import.dart";

class UserInfoListTitle extends StatelessWidget {
  const UserInfoListTitle(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});
  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(image),
      title: Text(
        title,
        style: AppStyles.styleSemiBold16(context),
      ),
      subtitle: Text(
        subtitle,
        style: AppStyles.styleRegular12(context),
      ),
    );
  }
}
