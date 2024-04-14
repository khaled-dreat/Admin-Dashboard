part of "../../../../../../../core/import/app_import.dart";

class LatestTransctonListView extends StatelessWidget {
  const LatestTransctonListView({super.key});
  static const items = [
    UserInfoModel(
        image: AppImages.imagesAvatar1,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: AppImages.imagesAvatar2,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: AppImages.imagesAvatar3,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map(
              (e) => IntrinsicWidth(
                child: UserInfoListTitle(
                  userInfoModel: e,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
