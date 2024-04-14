part of "../../../../../../../core/import/app_import.dart";

class CustomTextForm extends StatelessWidget {
  const CustomTextForm({super.key, required this.hintTextl});
  final String hintTextl;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintStyle: AppStyles.styleRegular16(context)
              .copyWith(color: Color(0xFFAAAAAA)),
          hintText: hintTextl,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          fillColor: const Color.fromARGB(255, 231, 229, 229),
          filled: true),
    );
  }
}

OutlineInputBorder buildBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Color(0xFFFAFAFA)));
}
