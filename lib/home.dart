import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ten_news/screens/home/homepage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Builder(
            builder: (context) => IconButton(
              icon: SvgPicture.asset(
                "assets/icons/drawer.svg",
                height: 15,
                width: 34,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
        backgroundColor: currentIndex == 3 ? Color(0xffF7F8FA) : Colors.white,
        elevation: 0,
        centerTitle: false,
        titleSpacing: 0,
      ),
      drawer: Container(
        width: MediaQuery.of(context).size.width / 1.25,
        child: Drawer(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              DrawerHeader(
                child: Container(
                    height: 142,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      "assets/images/ten_news.png",
                    )),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentIndex = 3;
                  });
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Profile',
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 45,
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Settings',
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Text(
                'About',
                style: TextStyle(
                  fontFamily: 'Avenir',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 45,
              ),
              Text(
                'Log Out',
                style: TextStyle(
                  fontFamily: 'Avenir',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 45,
              ),
              Material(
                borderRadius: BorderRadius.circular(500),
                child: InkWell(
                  borderRadius: BorderRadius.circular(500),
                  splashColor: Colors.black45,
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.black,
                    child: Icon(Icons.arrow_back, color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                  child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 65,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      'v1.0.1',
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 20,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
      body: <Widget>[
        HomePage(),
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.yellow,
        ),
        Container(
          color: Colors.green,
        ),
      ][currentIndex],
      bottomNavigationBar: BubbleBottomBar(
        opacity: 0,
        currentIndex: currentIndex,
        onTap: changePage,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        elevation: 8,
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
              backgroundColor: Colors.black,
              icon: SvgPicture.asset(
                'assets/icons/home.svg',
                width: 21,
                color: Colors.black54,
                height: 21,
              ),
              activeIcon: SvgPicture.asset(
                'assets/icons/home.svg',
                width: 21,
                color: Colors.black,
                height: 21,
              ),
              title: Text("Home")),
          BubbleBottomBarItem(
              backgroundColor: Colors.black,
              icon: SvgPicture.asset(
                'assets/icons/search.svg',
                width: 21,
                color: Colors.black54,
                height: 21,
              ),
              activeIcon: SvgPicture.asset(
                'assets/icons/search.svg',
                width: 21,
                color: Colors.black,
                height: 21,
              ),
              title: Text("Search")),
          BubbleBottomBarItem(
              backgroundColor: Colors.black,
              icon: SvgPicture.asset(
                'assets/icons/bookmark.svg',
                width: 21,
                color: Colors.black54,
                height: 21,
              ),
              activeIcon: SvgPicture.asset(
                'assets/icons/bookmark.svg',
                width: 21,
                color: Colors.black,
                height: 21,
              ),
              title: Text("Bookmarks")),
          BubbleBottomBarItem(
              backgroundColor: Colors.black,
              icon: Container(
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage('assets/user.png')),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0x5c000000),
                        offset: Offset(0, 1),
                        blurRadius: 5)
                  ],
                ),
              ),
              title: Text("Profile")),
        ],
      ),
    );
  }
}
