import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ten_news/model/categories_model.dart';
import '../../reusable/custom_cards.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController _searchController = TextEditingController();
  FocusNode searchNode;
  bool isCategory = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      children: <Widget>[
        Container(
          height: 46,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.16),
                offset: Offset(0, 3),
                blurRadius: 6,
              ),
            ],
          ),
          padding: EdgeInsets.fromLTRB(
              25, 0, _searchController.text.isNotEmpty ? 10 : 25, 0),
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Center(
                child: TextFormField(
                  controller: _searchController,
                  focusNode: searchNode,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.transparent,
                    )),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                    hintText: "Search",
                    hintStyle: TextStyle(
                      fontFamily: "Avenir",
                      fontSize: 18,
                      color: Colors.black45,
                    ),
                    suffixIconConstraints: BoxConstraints(
                      minHeight: 19,
                      minWidth: 19,
                    ),
                  ),
                ),
              )),
              _searchController.text.isNotEmpty
                  ? IconButton(
                      icon: SvgPicture.asset(
                        "assets/icons/search_cancel.svg",
                        color: Colors.black45,
                      ),
                      onPressed: () {
                        setState(() {
                          _searchController.clear();
                          isCategory = false;
                        });
                      })
                  : SvgPicture.asset("assets/icons/search.svg",
                      color: Colors.black45),
            ],
          ),
        ),
        SizedBox(
          height: 17,
        ),
        if (_searchController.text.isEmpty) ...[
          Text("Top Categories",
              style: TextStyle(
                fontFamily: "Avenir",
                fontSize: 20,
                fontWeight: FontWeight.w600,
              )),
          SizedBox(
            height: 10,
          ),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            childAspectRatio: 149 / 114,
            physics: NeverScrollableScrollPhysics(),
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            children: List.generate(4, (index) {
              return CategoriesCard(
                category: categories[index].name,
                imageUrl: categories[index].imageUrl,
              );
            }),
          ),
          SizedBox(
            height: 40,
          ),
          Text("Browse All",
              style: TextStyle(
                fontFamily: "Avenir",
                fontSize: 20,
                fontWeight: FontWeight.w600,
              )),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            childAspectRatio: 149 / 114,
            physics: NeverScrollableScrollPhysics(),
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            children: List.generate(categories.length - 4, (index) {
              return CategoriesCard(
                category: categories[index + 4].name,
                imageUrl: categories[index + 4].imageUrl,
              );
            }),
          ),
        ] else ...[
          if(_searchController.text.isNotEmpty)...[
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "Search Result for ",
                style: TextStyle(
                  fontFamily: "Avenir",
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withOpacity(.55),
                )),
            TextSpan(
                text: _searchController.text,
                style: TextStyle(
                  fontFamily: "Avenir",
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff1fa2f9),
                )),
          ])),
          SizedBox(
          height: 17,
          ),
          Column(
            children: List.generate(10, (index) {
              return SearchCard();
            }),
          )]
          else...[
             RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "No Result Found for ",
                style: TextStyle(
                  fontFamily: "Avenir",
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withOpacity(.55),
                )),
            TextSpan(
                text: _searchController.text,
                style: TextStyle(
                  fontFamily: "Avenir",
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff1fa2f9),
                )),
          ])),
          SizedBox(
          height: 120,
          ),
          SvgPicture.asset("assets/icons/search.svg",color: Color(0xff737373).withOpacity(.6),height: 159,width: 159,),
          SizedBox(
            height: 59,
          ),
          Text("no Result found",style: TextStyle(
            fontFamily: "Avenir",
            fontSize: 16,
            color: Color(0xffbebebe),
          ),
          textAlign: TextAlign.center,
          )
          ]
        ]
      ],
    );
  }
}
