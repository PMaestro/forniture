import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_proj/screens/details/components/body.dart';
import 'package:furniture_proj/util/constants.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(left: kDefaultPadding),
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      title: Text('Back'.toUpperCase(),
      style: Theme.of(context).textTheme.bodyText2,),
      actions: <Widget>[
        IconButton(icon: SvgPicture.asset('assets/icons/cart_with_item.svg'), onPressed: (){},)
      ],
    );
  }
}
