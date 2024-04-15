part of "../../../../../../core/import/app_import.dart";

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.imagesCardBackground)),
            color: Color(0xFF4EB7F2),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                "Name card",
                style: AppStyles.styleRegular16(context)
                    .copyWith(color: Colors.white),
              ),
              subtitle: Text(
                "Syah Bandi",
                style: AppStyles.styleMedium20(context),
              ),
              trailing: SvgPicture.asset(AppImages.imagesGallery),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "0123 4567 8912 3456",
                    style: AppStyles.styleSemiBold24(context)
                        .copyWith(color: Colors.white),
                  ),
                  Text(
                    "12/20-124",
                    style: AppStyles.styleRegular16(context)
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 54 - 28,
            )
          ],
        ),
      ),
    );
  }
}
