part of "../../import/app_import.dart";

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.backgroundColor, this.textColor});
  final Color? backgroundColor, textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              elevation: 0,
              backgroundColor: backgroundColor ?? Color(0XFF4Db7F2)),
          onPressed: () {},
          child: Text(
            "Send Mony",
            style:
                AppStyles.styleSemiBold18(context).copyWith(color: textColor),
          )),
    );
  }
}
