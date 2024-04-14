part of '../../../../../../../core/import/app_import.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField(
      {super.key, required this.hintTextl, required this.title});
  final String hintTextl, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextForm(
          hintTextl: hintTextl,
        )
      ],
    );
  }
}
