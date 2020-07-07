
//Statefull widget needed becouse we are going to change some state on our category
import 'package:flutter/material.dart';
import 'package:furniture_proj/util/constants.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  //by default select first item
  int selectedIndex = 0;
  List categories = ['All','Sofa','Park bench', 'Armchair'];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding/2),
      height: 30,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index)=>GestureDetector(
          onTap: (){
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            //at last item it adds extra 20 in right padding value
            margin: EdgeInsets.only(left: kDefaultPadding,right: index == categories.length -1 ? kDefaultPadding : 0,),
            decoration: BoxDecoration(
              color: index == selectedIndex ? Colors.white.withOpacity(0.4): Colors.transparent,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(categories[index],
              style: TextStyle(color: Colors.white),),
          ),
        ),),
    );
  }
}
