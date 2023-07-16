import 'package:flutter/material.dart';
import 'package:school_app/constraints.dart';

class FeeButton extends StatelessWidget {
  const FeeButton(
      {super.key,
      required this.title,
      required this.iconData,
      required this.onPress});
  final String title;
  final IconData iconData;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: double.infinity,
        height: 40.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [KSecondaryColor, KPrimaryColor],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(0.5, 0.0),
              stops: [0.0, 0.1],
              tileMode: TileMode.clamp),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(KDefaultPadding),
            bottomRight: Radius.circular(KDefaultPadding),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                  ),
            ),
            Icon(
              iconData,
              color: KTextWhiteColor,
              size: 30.0,
            )
          ],
        ),
      ),
    );
  }
}

class FeeDetalRow extends StatelessWidget {
  const FeeDetalRow(
      {super.key, required this.title, required this.statusValue});
  final String title;
  final String statusValue;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(fontSize: 14.0, color: KTextLightColor),
        ),
        Text(
          statusValue,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
              fontSize: 14.0,
              color: KTextBlackColor,
              fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
