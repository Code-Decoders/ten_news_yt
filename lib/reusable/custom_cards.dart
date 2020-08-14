import 'package:flutter/material.dart';

class HomePageCard extends StatelessWidget {
  final imageUrl, title, subtitle, time;

  const HomePageCard(
      {Key key,
      this.imageUrl = "assets/cardimage.jpg",
      this.title =
          "Watch: Gameplay for the first 13 games optimised for Xbox Series X",
      this.time = "07 May  07:19",
      this.subtitle =
          "Microsoft showcased 13 games, with their gameplay trailers, that will come to Xbox Series X with optimisations."})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 203,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Color(0xff707070),
                width: 1,
              ),
              image: DecorationImage(
                  image: NetworkImage(imageUrl), fit: BoxFit.fill),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.black.withOpacity(0.33),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Center(
                      child: Text(
                        subtitle,
                        style: TextStyle(
                            fontFamily: "Avenir",
                            fontSize: 16,
                            color: Colors.white),
                        maxLines: 3,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(time,
              style: TextStyle(
                  fontFamily: "Times", fontSize: 13, color: Color(0xff8a8989))),
          SizedBox(
            height: 7,
          ),
          Text(title,
              style: TextStyle(
                  fontFamily: "League",
                  fontSize: 23,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
