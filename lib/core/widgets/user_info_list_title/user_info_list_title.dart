part of "../../import/app_import.dart";

class UserInfoListTitle extends StatelessWidget {
  const UserInfoListTitle({
    super.key,
    required this.userInfoModel,
  });
  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(userInfoModel.image),
        title: Text(
          userInfoModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          userInfoModel.subTitle,
          style: AppStyles.styleRegular12(context),
        ),
      ),
    );
  }
}
